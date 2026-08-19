# An Exploration into Optional Trait Methods in Rust

**NOTE:** if you're in a hurry and just want to see a list of all the approaches + their pros and cons, skip ahead to the [Summary and Comparisons](#summary-and-comparisons) section

## A Motivating Example - An Extensible Protocol

This writeup is a result of working on [`gdbstub`](https://github.com/daniel5151/gdbstub), a crate that implements the GDB Remote Serial Protocol. The GDB RSP is _old_, like, mid 80s old, and has lots of optional and mutually-incompatible extensions.

In `gdbstub`, users implement the `Target` trait for their particular system, and hand it off to a generic `GdbStub` controller, which proceeds to handle the nitty-gritty details of the GDB protocol, invoking the provided `Target` methods when required.

So, what's the best way to write an API that enables users to implement subsets of the protocol?

In other words: how can we implement optional trait methods in Rust?

Ideally, we'd want all the following properties:

-   **Methods can be dynamically enabled/disabled at _runtime_**
    -   e.g: select capabilities via CLI flag
-   **Easy for API consumers to understand + implement**
    -   Looks like a "typical" Rust API
    -   Uses "standard" method signatures (i.e: no wrapped Option<Result<..>>) kinds
    -   Single "source of truth" for method implementation (i.e: no "helper" methods)
-   **Easy for API authors to work with + maintain**
    -   Minimal boilerplate to invoke a method
    -   Check if method exists _before_ invoking it
    -   Easy to handle the "missing method" case
-   **Compile-time safety & performance**
    -   Lean on the compiler to enforce protocol invariants at compile-time. i.e: "If it compiles, it's a valid implementation"
        -   Compile-time Mutually-Dependent methods
        -   Compile-time Mutually-Exclusive methods
    -   Plays nicely with dead-code-elimination (and when applicable - supports explicit dead code hints)
        -   If a method is statically known to be disabled - don't generate any code for it!

### A Simplified Example Protocol - The Remote ALU Protocol

Instead of working with the real-world inspiration for this project - the GDB remote serial protocol - let's consider a simpler, artificial protocol that has several similar properties: the Remote ALU Protocol.

The protocol uses a simple line-oriented ASCII text wire format:

| Command          | Wire Format | Category / Requirement   | Description                   |
| :--------------- | :---------- | :----------------------- | :---------------------------- |
| `PrintState`     | `p`         | Base Protocol            | Print current state           |
| `SetState(n)`    | `s <n>`     | Base Protocol            | Set state to `<n>`            |
| `Inc`            | `+`         | IncDec Extension         | Increment state               |
| `Dec`            | `-`         | IncDec Extension         | Decrement state               |
| `IncDec`         | `+-`        | IncDec Extension         | Increment and decrement state |
| `Mul(n)`         | `* <n>`     | Mul Extension            | Multiply state by `<n>`       |
| `ScaleFactor(n)` | `*~ <n>`    | Nested Extension (`Mul`) | Scale state by factor `<n>`   |

Or, modeled in Rust:

```rust
pub mod ext {
    #[derive(Clone, Copy, Debug)]
    pub enum BaseCommand {
        /// Print the current accumulator state (`p`)
        PrintState,
        /// Set the accumulator's state (`s <n>`)
        SetState(isize),
    }

    #[derive(Clone, Copy, Debug)]
    pub enum IncDecCommand {
        /// Increment the accumulator (`+`)
        Inc,
        /// Decrement the accumulator (`-`)
        Dec,
        /// Meta-operation: both increment _and_ decrement the accumulator (`+-`)
        IncDec,
    }

    #[derive(Clone, Copy, Debug)]
    pub enum MulCommand {
        /// Multiply the accumulator by some value (`* <n>`)
        Mul(isize),
    }

    #[derive(Clone, Copy, Debug)]
    pub enum MulScaleFactorCommand {
        /// Scale factor extension (nested within Mul) (`*~ <n>`)
        ScaleFactor(isize),
    }
}

#[derive(Clone, Copy, Debug)]
pub enum Command {
    Base(ext::BaseCommand),
    IncDec(ext::IncDecCommand),
    Mul(ext::MulCommand),
    MulScaleFactor(ext::MulScaleFactorCommand),
}
```

Each extension gets its own command namespace, even when its capability is
discovered through another extension. In particular, `MulScaleFactorCommand`
has its own `cmd_mul_scale_factor` compile-time gate, while IDET-based code
still discovers it through `ext_mul().and_then(|ops| ops.ext_scale_factor())`.
This keeps the command representation independent from the capability
hierarchy: nesting the capability does not force `ScaleFactor` to become a
variant of `MulCommand`.

It's got a lot of things we care about:

-   common "base" protocol (`PrintState`, `SetState`)
-   several protocol extensions (`IncDec`, `Mul`)
-   nested protocol extensions (`ScaleFactor` nested within `Mul`)
-   commands which are mutually-dependent on one another (`inc`/`dec` + `incdec`)

For simplicity, I didn't include mutually-exclusive commands in this example protocol, but I will touch upon this use-case when discussing the various approaches.

So, how can we write a library to run this protocol over an incoming byte stream (e.g., lines from standard input)? Well, let's start off with a controller:

```rust
pub struct TargetController<T: Target> {
    target: T,
}

impl<T: Target> TargetController<T> {
    /// Create a target controller that operates on the given target
    pub fn new(target: T) -> TargetController<T> {
        TargetController { target }
    }

    /// Parse an incoming byte buffer into a Command, guarded by target capabilities
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command>;

    /// Run the controller over incoming command lines from standard input
    pub fn run(&mut self) -> Result<(), Error<T::Error>>;
}
```

#### Dead Code Elimination (DCE) in Packet Parsing

In a real-world protocol parser, incoming raw byte packets (e.g. `"p"`, `"s <n>"`, `"+"`, `"-"`, `"+-"`, `"* <n>"`, `"*~ <n>"`) must be parsed into protocol commands before being handled.

A major performance advantage of IDETs and Fn-Pointer tables is that capability checks (`ext_incdec().is_some()`, `ext_mul().is_some()`) can **guard the parsing logic itself**:

```rust
/* IncDec extension parsing */
if self.target.ext_incdec().is_some() {
    if buf == b"+" { return Some(Command::IncDec(ext::IncDecCommand::Inc)); }
    if buf == b"-" { return Some(Command::IncDec(ext::IncDecCommand::Dec)); }
    if buf == b"+-" { return Some(Command::IncDec(ext::IncDecCommand::IncDec)); }
}
```

When a concrete target does *not* implement `ext_incdec()`, monomorphization and devirtualization turn `ext_incdec().is_some()` into a compile-time constant `false`. LLVM can then completely eliminate the packet parsing code paths for those unsupported commands from the final compiled binary.

Conversely, approaches like bare `Options` cannot query target capabilities *before* invoking methods. As a result, the parser must **speculatively parse** all incoming byte packets into `Command` variants regardless of target support, preventing compile-time DCE of unused packet parsing logic.

The question is: what's the best way to implement the `Target` trait?

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    // Optional methods part of the "IncDec" extension
    fn inc(&mut self) -> Result<(), Self::Error>;
    fn dec(&mut self) -> Result<(), Self::Error>;

    // Optional method part of the "Mul" extension
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;
}
```

## The "Static" Solution - Conditional Compilation using `cargo` features

If we ignore the first requirement, and disallow enabling/disabling methods at runtime, then the solution is obvious: Just have a cargo feature for each protocol extension! EZPZ :smile:

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    #[cfg(feature = "ext_incdec")]
    fn inc(&mut self) -> Result<(), Self::Error>;
    #[cfg(feature = "ext_incdec")]
    fn dec(&mut self) -> Result<(), Self::Error>;

    #[cfg(feature = "ext_mul")]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;
}
```

In fact, this works really well, and ticks almost every other box:

-   ends up generating a bog-standard Rust trait with zero "magic"
-   zero-overhead or boilerplate in calling methods in the implementation (aside from marking the associated block with `#[cfg(feature = "blah")]`)
-   use `#[cfg]` directives to enforce mutually dependent and exclusive methods.
-   Is quite literally _disabling_ code, which is the ultimate form of dead-code-elimination
    -   no need to lean on the optimizing compiler, and ensures less code is generated in debug builds as well

It does comes with several drawbacks though:

-   having multiple protocol implementations in a single project with different capabilities becomes very difficult.
    -   It's not _impossible_ https://github.com/rust-lang/cargo/issues/674, but it ends up requiring some serious cargo-fu.
-   as more features are added, testing every single combination of features for the correct behavior in a CI becomes more and more difficult
    -   Essentially, it stops being one codebase, and turns into `num_features!` codebases!

So, how can we implement optional trait methods _without_ requiring them to be toggled at compile time?

## 1. Using `is_supported` methods

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    fn ext_incdec_supported(&self) -> bool { false }
    fn inc(&mut self) -> Result<(), Self::Error> { unimplemented!() }
    fn dec(&mut self) -> Result<(), Self::Error> { unimplemented!() }

    fn ext_mul_supported(&self) -> bool { false }
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> { unimplemented!() }
}
```

Its biggest pro is that it's immediately understandable to _anyone_. Because `ext_*_supported()` methods allow capability pre-checks, LLVM can achieve Dead-Code Elimination during packet parsing similar to Fn Pointers and IDETs.

It's biggest cons are that it lacks a lot of compile-time safety...

-   easy to forget to implement either of the two methods
    -   if the `_supported` method is unimplemented, then the protocol will silently run the unsupported code-path instead
    -   if the `_supported` method is implemented, but the corresponding method isn't overwritten, there will be a error at runtime
        -   panic machinery is expensive on embedded systems, and is yucky

## 2. Using Options

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    fn inc(&mut self) -> Option<Result<(), Self::Error>> { None }
    fn dec(&mut self) -> Option<Result<(), Self::Error>> { None }

    fn mul(&mut self, n: isize) -> Option<Result<(), Self::Error>> { None }
}
```

### Using Bare `Option<Result<T, E>>`

i.e: call the method, and if it returns `None`, then it wasn't implemented.

Biggest con: it's impossible to query if a method exists without invoking it. This makes "probing" operations on difficult, as operations need to have an "inverse"

### Faking it with `OptResult<T, E>`

One con is that it uses a non-standard return type, which breaks the `?` operator in function body. With a bit of type-system shenanigans, this can be somewhat worked around:

```rust
#[derive(Debug, Clone)]
enum MaybeUnimplInner<E> {
    NoImpl,
    Error(E),
}

/// Wraps an error type with an additional "unimplemented" state. Can only be
/// constructed via `.into()` or the `?` operator.
#[derive(Debug, Clone)]
pub struct MaybeUnimpl<E>(MaybeUnimplInner<E>);

impl<E> MaybeUnimpl<E> {
    pub(crate) fn unimplemented() -> MaybeUnimpl<E> {
        MaybeUnimpl(MaybeUnimplInner::NoImpl)
    }
}

impl<T> From<T> for MaybeUnimpl<T> {
    fn from(e: T) -> Self {
        MaybeUnimpl(MaybeUnimplInner::Error(e))
    }
}

/// A result type which includes an "unimplemented" state.
///
/// `OptResult<T, E>` should be indistinguishable from `Result<T, E>`, aside
/// from the small caveat of having to use `.into()` when returning `Err`
/// variants (i.e: `return Err(foo)` will fail to compile).
pub type OptResult<T, E> = Result<T, MaybeUnimpl<E>>;

/// Makes working with OptResult easier.
pub(crate) trait OptResultExt<T, E> {
    /// If the `OptResult` is unimplemented, return `Ok(None)`. Otherwise,
    /// return `Ok(Some(T))` or `Err(E)`.
    fn map_unimpl(self) -> Result<Option<T>, E>;
    fn unimplemented() -> MaybeUnimpl<E> {
        MaybeUnimpl(MaybeUnimplInner::NoImpl)
    }
}

impl<T, E> OptResultExt<T, E> for OptResult<T, E> {
    fn map_unimpl(self) -> Result<Option<T>, E> {
        match self {
            Ok(t) => Ok(Some(t)),
            Err(MaybeUnimpl(MaybeUnimplInner::NoImpl)) => Ok(None),
            Err(MaybeUnimpl(MaybeUnimplInner::Error(e))) => Err(e),
        }
    }
}
```

and then:

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    fn inc(&mut self) -> OptResult<(), Self::Error> { Err(MaybeUnimpl::unimplemented()) }
    fn dec(&mut self) -> OptResult<(), Self::Error> { Err(MaybeUnimpl::unimplemented()) }

    fn mul(&mut self, n: isize) -> OptResult<(), Self::Error> { Err(MaybeUnimpl::unimplemented()) }
}
```

Unfortunately, this is just a bandaid, and doesn't address the underlying issues...

## 3. Using Function Pointers

Ahh, the good 'ol C-style approach. Use a table of function pointers.

```rust
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> { None }
    fn ext_mul(&mut self) -> Option<&'static TargetExtMulOps<Self>> { None }
}

pub struct TargetExtIncDecOps<This: Target + ?Sized> {
    pub inc: fn(&mut This) -> Result<(), This::Error>,
    pub dec: fn(&mut This) -> Result<(), This::Error>,
}

pub struct TargetExtMulOps<This: Target + ?Sized> {
    pub mul: fn(&mut This, n: isize) -> Result<(), This::Error>,
}
```

What does an `Ops` structure implementation look like?

```rust
// for example:
const OPT_EXT_OPS: TargetExtIncDecOps<ExampleTarget> = TargetExtIncDecOps {
    inc: |this| -> Result<(), &'static str> {
        this.state += 1;
        Ok(())
    },

    dec: |this| -> Result<(), &'static str> {
        this.state -= 1;
        Ok(())
    },
};

```

-   NOTE: can't use `Self::Error`, must use either `<Self as Target>::Error`, or the concrete error type itself

This ends up ticking every single compile-time safety and performance box.

Unfortunately, this is an _extremely_ un-Rust-like API. It uses `this` instead of `self`, requires using raw function pointers, unclear `'static` references, etc...

... but wait a second, isn't this just us rolling our own vtables? why not let the compiler do it for us!

## 4. Using Inlineable Dyn Extension Traits (IDETs)

Poking around, it looks like it's not a particularly well known technique.

-   https://stackoverflow.com/questions/30274091/is-it-possible-to-check-if-an-object-implements-a-trait-at-runtime
-   https://stackoverflow.com/a/55914318
-   https://users.rust-lang.org/t/working-around-specialisation/13367

Well, if no one's written about it yet, I guess I'll give it a name! **Inlineable Dyn Extension Traits**

What are "Inlineable Dyn Extension Traits"? Well, lets break it down:

-   **Extension Traits** - A common [Rust convention](https://rust-lang.github.io/rfcs/0445-extension-trait-conventions.html#what-is-an-extension-trait) to extend the functionality of a Trait, _without_ modifying the original trait.
-   **Dyn** - Alludes to the use of Dynamic Dispatch via [Trait Objects](https://doc.rust-lang.org/book/ch17-02-trait-objects.html).
-   **Inlineable** - Alludes to the fact that this approach can be easily inlined, making it a truly zero-cost abstraction.

In a nutshell, Inlineable Dyn Extension Traits (or IDETs) are an abuse of the Rust trait system + modern compiler optimizations to emulate compile-time optional trait methods!

```rust
pub trait Target {
    type Error;

    fn base(&mut self) -> TargetBaseOps<Self>;

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
        None
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<Self>> {
        None
    }
}

pub trait TargetBase: Target {
    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;
}

pub trait TargetExtIncDec: Target {
    fn inc(&mut self) -> Result<(), Self::Error>;
    fn dec(&mut self) -> Result<(), Self::Error>;
}

pub trait TargetExtMul: Target {
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;

    #[inline(always)]
    fn ext_scale_factor(&mut self) -> Option<TargetExtScaleFactorOps<Self>> {
        None
    }
}

pub trait TargetExtScaleFactor: Target {
    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error>;
}

macro_rules! define_ops {
    ($exttrait:ident -> $extname:ident) => {
        #[allow(missing_docs)]
        pub type $extname<'a, T> = &'a mut dyn $exttrait<Error = <T as Target>::Error>;
    };
}

define_ops!(TargetBase -> TargetBaseOps);
define_ops!(TargetExtIncDec -> TargetExtIncDecOps);
define_ops!(TargetExtMul -> TargetExtMulOps);
define_ops!(TargetExtScaleFactor -> TargetExtScaleFactorOps);

```

Similar to [interface conversion](https://golang.org/doc/effective_go.html#interface_conversions) in Go.

-   https://stackoverflow.com/questions/27892375/can-i-do-type-introspection-with-trait-objects-and-then-downcast-it

#### Technical overview

The basic principles behind Inlineable Dyn Extension Traits are best explained though example:

-   (library) Create a new `trait MyFeat: Target { ... }`.
    -   Making `MyFeat` a subtrait of `Target` enables using `Target`'s
        associated types.
-   (library) "Link" the `MyFeat` extension to the original `Target` trait
    though a new `Target` method. The signature varies depending on the kind
    of extension:

```rust
// Using a typedef for readability
type MyFeatExt<'a, T> =
    &'a mut dyn MyFeat<Error = <T as Target>::Error>;

trait Target {
    type Error;

    // Required extension
    fn ext_my_feat(&mut self) -> MyFeatExt<Self>;
    // Optional extension
    fn ext_my_feat(&mut self) -> Option<MyFeatExt<Self>> {
        None
    }
    // Mutually-exclusive extensions
    fn either_a_or_b(&mut self) -> EitherOrExt<Self::Error>;

}
enum EitherOrExt<'a, E> {
    MyFeatA(&'a mut dyn MyFeatA<Error = E>),
    MyFeatB(&'a mut dyn MyFeatB<Error = E>),
}
```

-   (user) Implements `MyFeat` for their target.
-   (user) Implements `Target`, returning `self` in whenever a
    `MyFeatExt<Self>` is required.

```rust
impl Target for MyTarget {
    // Required extension
    fn ext_my_feat(&mut self) -> MyFeatExt<Self> {
        self
    }
    // Optional extension - Implemented
    fn ext_my_optfeat(&mut self) -> Option<MyFeatExt<Self>> {
        Some(self) // will not compile unless `MyTarget` also implements `MyFeat`
    }
    // Mutually-exclusive extensions
    fn either_a_or_b(&mut self) -> EitherOrExt<Self::Arch, Self::Error> {
        EitherOrExt::MyFeatA(self)
    }
}
```

-   (library) Can now query whether or not the extension is available,
    _without_ having to actually invoke any method on the target!

```rust
// in a method that accepts `target: impl Target`
match target.ext_my_optfeat() {
    Some(ops) => ops.cool_feature(),
    None => { /* report unsupported */ }
}
```

If you take a look at the generated assembly (e.g: using godbolt.org),
you'll find that the compiler is able to inline and devirtualize all the
`ext_` methods, which in-turn allows the dead-code-eliminator to work it's
magic, and remove all unused branches from the library code! i.e: If a
target didn't support `MyFeat`, then the `match` statement above would be
equivalent to calling `self.cool_feature()` directly!

### Caveats:

Malicious implementations

similar past issue: https://github.com/rust-lang/rust/issues/29701

TL;DR: there's no reason why an implementation couldn't returns something that _isn't_ self.

```rust
impl Target for AdvancedTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> TargetBaseOps<Self> {
        if fifty_fifty() {
            TargetBaseOps::A(self)
        } else {
            TargetBaseOps::B(self)
        }
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
        if fifty_fifty() {
            Some(self)
        } else {
            None
        }
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<Self>> {
        Some(self)
    }
}
```

## 5. Using Nightly `try_as_dyn` (`core::any::try_as_dyn_mut`)

Nightly Rust introduces the experimental `#![feature(try_as_dyn)]` API (`core::any::try_as_dyn` / `try_as_dyn_mut`), tracked in [issue #144361](https://github.com/rust-lang/rust/issues/144361).

`try_as_dyn_mut` provides a native language feature for dynamic trait coercion. It allows attempting to cast a reference to a type `T` into a trait object `&mut dyn Trait` at runtime, returning `Option<&mut dyn Trait>`:

```rust
if let Some(ops) = core::any::try_as_dyn_mut::<T, dyn TargetExtIncDec<Error = T::Error>>(&mut self.target) {
    // T implements TargetExtIncDec!
    ops.inc()?;
}
```

### Advantages

-   **Zero Target Boilerplate:** Unlike IDETs (which require default `ext_*` methods on `Target` and `Some(self)` boilerplate in target implementations), `try_as_dyn` requires **no conversion methods** on the base `Target` trait. Target implementers simply implement the traits they support:
    ```rust
    impl Target for MyTarget { type Error = &'static str; ... }
    impl TargetExtIncDec for MyTarget { ... }
    ```
-   **Single Source of Truth:** Capability probing relies directly on whether the type implements the extension trait. There are no helper methods (`is_supported` or `ext_*`) that can fall out of sync or be implemented incorrectly.
-   **Eliminates "Adversarial" Implementation Bugs:** In IDETs, a target implementer could theoretically write an `ext_incdec` method that returns `None` even while implementing `TargetExtIncDec`, or return a reference to a different struct entirely. `try_as_dyn_mut` queries compiler trait resolution directly.

### Disadvantages & Requirements

-   **Nightly Only:** Currently an unstable feature gated behind `#![feature(try_as_dyn)]`.
-   **`'static` Lifetime Requirement:** Currently requires `'static` bounds (`T: 'static` and `<T as Target>::Error: 'static`).
-   **Nested Extension Hierarchy Ergonomics:** With IDETs, nested extensions can be hierarchically chained (`target.ext_mul().and_then(|ops| ops.ext_scale_factor())`). With `try_as_dyn_mut`, nested extension checks probe `try_as_dyn_mut::<T, dyn TargetExtScaleFactor<...>>(&mut target)` directly or enforce trait inheritance (`TargetExtScaleFactor: TargetExtMul`).
-   **Incompatibility with Trait Objects (`dyn Target` / `Box<dyn Target>`):**
    `try_as_dyn` operates strictly on the static type `T` known at the call site. If the target type is erased to a trait object reference (e.g. `target: &mut dyn Target` or `Box<dyn Target>`), calling `try_as_dyn_mut::<dyn Target, dyn TargetExtIncDec>(target)` checks if the trait object type `dyn Target` itself implements `TargetExtIncDec`—it **does NOT** perform dynamic vtable cross-casting or downcasting of the underlying concrete type (`MyTarget`). It returns `None`!

    By contrast, IDETs declare `ext_incdec(&mut self)` directly on the `Target` trait. Calling `target.ext_incdec()` on `&mut dyn Target` or `Box<dyn Target>` dispatches through `dyn Target`'s vtable to `MyTarget::ext_incdec()`, successfully returning `Some(&mut self as &mut dyn TargetExtIncDec)`. Thus, IDETs work seamlessly across both monomorphized generics (`T: Target`) AND dynamic trait objects (`dyn Target`), whereas `try_as_dyn` is strictly restricted to concrete types (`T: Target`).

### The Catch: Static Type Resolution vs. Dynamic Runtime Enablement (Why IDETs Still Win!)

While `try_as_dyn` appears to simplify IDETs by removing target conversion boilerplate, it has a fundamental design limitation when it comes to **per-instance runtime feature enablement**.

Recall one of our core motivating requirements:
> **Methods can be dynamically enabled/disabled at _runtime_** (e.g. toggling protocol extensions per-target based on runtime CLI flags or instance settings).

- **With IDETs (`using_traits`):**
  The capability conversion method on `Target` (`fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>>`) is an actual method executed on an *instance* of `Target`. Target implementers can inspect runtime state inside `ext_incdec`:
  ```rust
  fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
      if self.config.enable_incdec {
          Some(self) // Type-checked at compile time, but conditionally enabled at runtime!
      } else {
          None
      }
  }
  ```
  Crucially, IDETs preserve **compile-time safety**: returning `Some(self)` will fail to compile unless `Self` actually implements `TargetExtIncDec`.

- **With `try_as_dyn` (`using_try_as_dyn`):**
  `try_as_dyn_mut::<T, dyn Trait>(&mut target)` performs **pure static type resolution**. It queries whether the concrete type `T` implements `TargetExtIncDec` at the type level. If `AdvancedTarget` implements `TargetExtIncDec`, `try_as_dyn_mut` will **always** return `Some(&mut target)` for every instance of `AdvancedTarget`. There is no mechanism in `try_as_dyn` alone to disable support per-instance based on runtime configuration!

#### What if we pair `try_as_dyn` with a sidecar `supports_*` method?
To support runtime toggling with `try_as_dyn`, a library author would have to introduce a separate sidecar method on `Target` (e.g. `fn supports_incdec(&self) -> bool`):
```rust
if self.target.supports_incdec() {
    if let Some(ops) = try_as_dyn_mut::<T, dyn TargetExtIncDec<Error = T::Error>>(&mut self.target) {
        ops.inc()?;
    }
}
```
However, this reintroduces major drawbacks:
1. **Destroys "Single Source of Truth":** Now the target implementer must maintain both `impl TargetExtIncDec for MyTarget` AND `fn supports_incdec(&self) -> bool`.
2. **Runtime Mismatch Risk:** If `supports_incdec()` returns `true` at runtime but the developer forgot to write `impl TargetExtIncDec for MyTarget`, `try_as_dyn_mut` returns `None`. The library must perform runtime error checking or fallback handling for this state inconsistency.
3. **Double-Branching Overhead:** The controller must evaluate both the sidecar bool check and the `try_as_dyn_mut` option, adding unnecessary runtime branching.

**Conclusion:** For APIs that require per-instance runtime feature toggling, **IDETs still win!** IDETs combine runtime instance checking and type-safe trait object coercion into a single, atomic method invocation enforced by the compiler.

### Codegen Comparison relative to IDETs

How does `try_as_dyn` compare to IDETs (`using_traits`) in generated assembly and compiler optimization?

In release mode, the answer is simple: **the generated code is identical in
this experiment.** Once `TargetController<T>` is monomorphized, LLVM can resolve
`try_as_dyn_mut` to `Some` or `None` and throw away the unused branch. The final
`run_optional_trait_methods` function is identical between IDETs and
`try_as_dyn` on all three targets:

-   `BasicTarget`: **114 x86 instructions / 91 AArch64 instructions**
-   `FaultyTarget`: **141 x86 instructions / 125 AArch64 instructions**
-   `AdvancedTarget`: **281 x86 instructions / 246 AArch64 instructions**

Debug mode is a different story: `try_as_dyn_mut` still invokes the runtime
trait-resolution machinery, whereas an IDET is just a direct method call which
returns `Some(self)`.

So for statically-known capabilities, `try_as_dyn` gets the same optimized
codegen as IDETs without the target-side conversion methods. IDETs still have
one important trick that `try_as_dyn` doesn't: their answer can vary from one
target instance to another at runtime.

## Summary and Comparisons

### Feature Comparison

:x: ❌
:heavy_minus_sign: ➖
:heavy_check_mark: ✔️
:grey_question: ❔

#### Methods can be enabled/disabled at _Runtime_

Every technique except for `cargo` features, specialization, and pure `try_as_dyn` (which operates on static types rather than instance state).

#### Easy for API consumers to understand + implement

|                                                    | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs | `try_as_dyn` | Specialization |
| -------------------------------------------------- | ---------------- | -------------- | ------- | ----------- | ----- | ------------ | -------------- |
| Looks like a "typical" Rust API                    | ✔️                | ✔️              | ✔️\*     | ❌           | ➖     | ✔️            | ✔️              |
| Uses "standard" method signatures                  | ✔️                | ✔️              | ❌       | ✔️           | ✔️     | ✔️            | ✔️              |
| Single "source of truth" for method implementation | ✔️                | ❌              | ✔️       | ❌\*\*       | ❌\*\* | ✔️            | ✔️              |

\* The `OptResult` type could be a source of confusion

\*\* See [Future work](#future-work) for how this could be mitigated

#### Easy for API authors to work with + maintain

|                                             | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs | `try_as_dyn` | Specialization |
| ------------------------------------------- | ---------------- | -------------- | ------- | ----------- | ----- | ------------ | -------------- |
| Minimal boilerplate to invoke a method      | ✔️                | ➖              | ❌       | ➖           | ➖     | ✔️            | ✔️              |
| Check if method exists _before_ invoking it | N/A              | ✔️              | ❌       | ✔️           | ✔️     | ✔️            | N/A            |
| Easy to handle the "missing method" case    | ✔️                | ✔️              | ❌       | ✔️           | ✔️     | ✔️            | ✔️              |

#### Compile-time safety + performance

"If it compiles, it's a valid implementation"

|                                         | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs | `try_as_dyn` | Specialization |
| --------------------------------------- | ---------------- | -------------- | ------- | ----------- | ----- | ------------ | -------------- |
| Compile-time Mutually-Dependent methods | ✔️                | ❌              | ❌       | ✔️           | ✔️     | ✔️            | ✔️              |
| Compile-time Mutually-Exclusive methods | ✔️                | ❌              | ❌       | ✔️           | ✔️\*   | ✔️\*          | ❔              |
| Ensures effective dead-code-elimination | ✔️++              | ✔️\*\*          | ❌       | ✔️\*\*       | ✔️\*\* | ✔️\*\*        | ✔️              |

\* Assuming the implementation adheres to conventions and is not "adversarial"

\*\* May require additional "hints" to ensure dead code elimination

### Performance Analysis

[daniel5151/inlinable-dyn-extension-traits](https://github.com/daniel5151/inlinable-dyn-extension-traits) contains sample code for many of these methods, and includes assembly listings.

So, does all of this actually optimize away?

On the pinned compiler, the answer is yes! The fully-inlined IDET and
`try_as_dyn` run loops are instruction-for-instruction identical across all
three targets and both checked-in architectures. Function pointers match them
on x86. On AArch64 they match for `BasicTarget`, while the function-pointer run
loop is one instruction smaller for `FaultyTarget` and four instructions
smaller for `AdvancedTarget`; the DCE behavior is the same, but the final code
layout is not identical.

There are a couple details worth keeping in mind while looking at the numbers:

-   The small capability-conversion helpers use `always_inline`.
-   `parse_command` and `handle` can be marked `#[inline(never)]` to keep them
    visible as standalone assembly functions for inspection.
-   **Target Leaf Function Inlining:** Target methods (`get_state`, `set_state`, `inc`, `dec`, etc.) retain unconditional `#[inline(never)]` annotations. In our simplified benchmark targets, these methods perform trivial state mutations; marking them `#[inline(never)]` models real-world protocol implementations (such as `gdbstub` targets) where leaf handlers perform non-trivial I/O, hardware register access, or memory manipulation that an optimizing compiler would not inline into the main packet loop.

There is also one important limitation: these assembly examples use concrete
targets whose capability answers are constant. That's exactly what lets LLVM
turn the checks into compile-time `Some` / `None` decisions. A target whose
answer changes at runtime is going to keep that branch.

#### What About Runtime-Varying and Erased Targets?

So far, all the assembly examples use a concrete target whose capabilities are
known at compile time. But IDETs don't require `ext_*` methods to always return
the same thing! They can inspect runtime state, and they continue to work after
the target has been erased behind `dyn Target`.

I added two small test cases:

-   `run_runtime_toggle_case` uses a concrete target whose IncDec support is
    controlled by a runtime boolean.
-   `run_erased_target_case` accepts `&mut dyn Target`, preventing LLVM from
    knowing which concrete target it will receive.

Here's what the resulting `-Os` AArch64 assembly looks like:

| Target shape | Instructions | Direct calls | Indirect calls |
| :----------- | -----------: | -----------: | -------------: |
| Static Basic | 61 | 3 | 0 |
| Static IncDec | 78 | 6 | 0 |
| Runtime-varying concrete | 88 | 6 | 0 |
| Erased `dyn Target` | 249 | 2 | 13 |

The runtime-varying case behaves about how you'd hope: LLVM has to retain the
capability check, but it still knows the concrete target type, so the actual
`inc` / `dec` calls are devirtualized into direct calls.

The erased case is where the static DCE advantage disappears. Since any
`dyn Target` can reach the exported function, LLVM has to retain every parser
path and dispatch capability queries and extension methods through vtables.

As a quick sanity check, merely enabling `traits_codegen_cases` doesn't add any
of this work to the normal run loop. Both linked executables were 52,336 bytes,
the focused symbols were discarded, and normalized `run_optional_trait_methods`
assembly was unchanged. The intermediate `rlib` did grow from 50,592 to 76,304
bytes, since it still has to carry those entry points until link time.

What does that mean at runtime? I added a tiny microbenchmark which cycles
through `+`, `-`, and `+-` for 100,000,000 calls:

| Target shape | Forward | Reverse |
| :----------- | ------: | ------: |
| Static Basic | 127.6 ms | 118.8 ms |
| Runtime disabled | 148.1 ms | 152.1 ms |
| Erased Basic | 589.4 ms | 590.1 ms |
| Static IncDec | 223.3 ms | 229.7 ms |
| Runtime enabled | 215.2 ms | 216.3 ms |
| Erased IncDec | 642.5 ms | 663.9 ms |

The concrete runtime check is fairly cheap. With support disabled it added
about 16–28% over the tiny static Basic case; with support enabled, both concrete
cases landed around 2.2–2.3 ns per call. The runtime version happened to be a
few percent faster here, but I wouldn't read anything into that beyond code
layout and branch prediction.

Erasing the target was much more noticeable: roughly 3x the enabled concrete
case and 4x the disabled case in this microbenchmark. That isn't the cost of
"one virtual call"—the erased path retains more parser code, performs several
vtable lookups, and the benchmark includes a small runtime-selection wrapper—but
it does show where IDETs stop being zero-cost. Alternating the selected target
on every call produced a similar gap: 3.15x forward (`196.3 ms` vs.
`617.9 ms`) and 3.19x in reverse (`196.8 ms` vs. `628.2 ms`).

These results were collected on an Apple M4 Pro using the pinned nightly
compiler. Exact reproduction commands are in
[`complete/asm/README.md`](complete/asm/README.md#focused-runtime-and-erased-cases).

#### Do IDETs Actually Need `#[inline(always)]`?

One lingering question is how much of this optimization depends on forcing the
small `ext_*` helpers to inline.

At least on the pinned AArch64 toolchain: apparently none of it! Removing
`always_inline` produced identical normalized assembly for `BasicTarget` and
`AdvancedTarget`, both with isolated controller functions and with the full run
loop inlined. Even the nested `ext_mul() -> ext_scale_factor()` path was
unchanged.

That's reassuring, but not a language guarantee. Different compiler versions,
crate boundaries, or deeper extension hierarchies may still need the hint.

#### Target-Level Assembly DCE Inspection (`BasicTarget` vs `FaultyTarget` vs `AdvancedTarget`)

Looking at `parse_command` and `handle` separately makes it easy to see exactly
what LLVM throws away for each target:

| Implementation / Metric                        | `BasicTarget`<br>*(Base Protocol ONLY)*                           | `FaultyTarget`<br>*(Base + `IncDec`)*                       | `AdvancedTarget`<br>*(All Extensions)* |
| :--------------------------------------------- | :---------------------------------------------------------------- | :---------------------------------------------------------- | :------------------------------------- |
| **`parse_command`**                            |                                                                   |                                                             |                                        |
| • `cfg_gates`                                  | **22 instrs**<br>• **100% DCE** of enum variants & parser         | **50 instrs**<br>• Selective DCE of `Mul` and `ScaleFactor` | **90 instrs**<br>• Full parser         |
| • `is_supported` / `traits` / `fn` / `try_dyn` | **26 instrs**<br>• **100% DCE** of `IncDec`, `Mul`, `ScaleFactor` | **50 instrs**<br>• Selective DCE of `Mul` and `ScaleFactor` | **90–91 instrs**<br>• Full parser      |
| • `options`                                    | **90 instrs**<br>• Zero DCE (speculative parse)                   | **90 instrs**<br>• Zero DCE (speculative parse)             | **90 instrs**<br>• Full parser         |
| **`handle`**                                   |                                                                   |                                                             |                                        |
| • `cfg_gates`                                  | **9 instrs**<br>• Omits unneeded match arms                       | **32 instrs**<br>• Selective DCE of handlers                | **58 instrs**<br>• Full handler        |
| • `traits` / `fn` / `try_dyn`                  | **24 instrs**<br>• DCE of extension handlers                      | **42 instrs**<br>• Selective DCE of handlers                | **62 instrs**<br>• Full handler        |
| • `is_supported`                               | **35 instrs**<br>• Retains more fallback handling                 | **50 instrs**<br>• Selective DCE of handlers                | **58 instrs**<br>• Full handler        |
| • `options`                                    | **45 instrs**<br>• Retains extension branches                     | **73 instrs**<br>• Retains extension branches               | **107 instrs**<br>• Full handler       |

The important bit: when support is known for a concrete target, every
capability-gated approach lets LLVM remove both the unused parser and its
handler. `using_options` can't check support before parsing, so it keeps the
full 90-instruction parser even for `BasicTarget`.

Why does `using_options` also have such a large `handle`? Its `OptResult`
return values still need to be unpacked and checked at runtime, including the
`InvalidImpl` case for the `(inc, dec)` pair. That leaves it with 107 x86
instructions on `AdvancedTarget`, versus 58–62 for the capability-gated
approaches.

##### Why Are There Two Sets of Assembly Listings?

The `noinline` listings are meant to be read: `parse_command` and `handle` stay
as separate functions, and DCE markers make retained extension paths easy to
find.

The `inlined` listings are closer to the real optimized program. LLVM is free
to fold parsing and dispatch into `run_optional_trait_methods`, and the markers
are disabled. This lets us check that the inspection helpers aren't somehow
"faking" the DCE result:

- **`basic_traits.s` / `basic_fn.s` (Inlined)**: LLVM completely deletes all parsing byte checks for `+`, `-`, `+-`, `*`, `*~`, and their associated parser paths. The selected x86 run loop is **114 instructions**.
- **`basic_options.s` (Inlined)**: Lacking capability pre-checks, LLVM retains speculative parsing branches. The selected x86 run loop is **246 instructions**.

So the DCE still works end-to-end once all the inspection-only annotations are
removed. One caveat: these listings come from an `rlib`, so the size of the
whole `.s` file is not the size of a final linked binary.

#### How I Measured This

The assembly is generated with the repository's pinned nightly toolchain.
`generate_asm.sh` compiles the library target, which means I can generate x86
assembly from macOS without needing a linker or emulator for that target.
The readable listings include DCE markers, while the fully-inlined listings are
marker-free. Passing `--dce-markers` also produces a marked inlined corpus under
`target/dce-marker-asm` when I need to check exactly which paths survived.

`asm_stats.py` counts textual instructions—not encoded bytes, and definitely
not runtime cost. Counts from the readable listings also include the marker
overhead.

For timing, `run_hyperfine.sh` generates one deterministic command stream and
feeds that same input to every implementation. All of them use
`AdvancedTarget`, so every extension is enabled. Printing is replaced with
`black_box` to keep syscall noise out of the result, and DCE markers remain
disabled. The benchmarks run in both forward and reverse order to make
order-dependent noise easier to spot. Raw results and environment details are
written to `target/benchmark-results/`.

The following results were measured on the current AArch64 macOS host using 1,000,000 commands generated with seed 42, 30 measured runs, and 5 warmup runs.

##### Debug Mode (`-O0`)

| Implementation | Forward mean ± std dev (min … max)       | Reverse mean ± std dev (min … max)       |
| :------------- | :--------------------------------------- | :--------------------------------------- |
| `cfg_gates`    | 127.54 ms ± 4.77 ms (120.90 … 144.01 ms) | 128.32 ms ± 5.26 ms (121.51 … 151.59 ms) |
| `is_supported` | 132.00 ms ± 4.99 ms (120.28 … 141.89 ms) | 129.62 ms ± 3.40 ms (123.19 … 135.81 ms) |
| `options`      | 132.09 ms ± 3.34 ms (126.07 … 136.41 ms) | 135.74 ms ± 7.77 ms (125.98 … 162.52 ms) |
| `fn`           | 131.31 ms ± 3.44 ms (121.36 … 137.62 ms) | 148.04 ms ± 20.49 ms (123.29 … 209.06 ms) |
| `traits`       | 132.58 ms ± 3.33 ms (126.52 … 137.73 ms) | 163.34 ms ± 24.75 ms (130.64 … 227.52 ms) |
| `try_as_dyn`   | 139.52 ms ± 7.45 ms (126.62 … 164.04 ms) | 145.25 ms ± 13.42 ms (130.21 … 176.07 ms) |

##### Release Mode (`-Os`)

| Implementation | Forward mean ± std dev (min … max)    | Reverse mean ± std dev (min … max)    |
| :------------- | :------------------------------------ | :------------------------------------ |
| `cfg_gates`    | 17.06 ms ± 2.12 ms (15.08 … 22.05 ms) | 16.77 ms ± 1.69 ms (15.24 … 21.06 ms) |
| `is_supported` | 16.98 ms ± 1.79 ms (14.88 … 20.57 ms) | 17.94 ms ± 5.98 ms (15.11 … 47.86 ms) |
| `options`      | 16.47 ms ± 1.94 ms (14.95 … 20.68 ms) | 16.83 ms ± 2.07 ms (14.86 … 21.43 ms) |
| `fn`           | 16.73 ms ± 1.90 ms (14.99 … 20.58 ms) | 16.98 ms ± 2.35 ms (15.20 … 25.34 ms) |
| `traits`       | 16.53 ms ± 1.91 ms (14.87 … 20.51 ms) | 16.18 ms ± 1.51 ms (14.66 … 20.20 ms) |
| `try_as_dyn`   | 16.70 ms ± 2.07 ms (14.89 … 21.54 ms) | 16.86 ms ± 2.51 ms (14.76 … 25.30 ms) |

Debug mode is fairly noisy. `cfg_gates` is fastest in both orders, but most of
the forward means are within about 4% of it, while the reverse `fn`, IDET, and
`try_as_dyn` runs have large outliers. That roughly lines up with the amount of
unoptimized glue each approach needs, but this is still an end-to-end parser
benchmark—I wouldn't pin the difference on any one call or branch.

Release mode is the more interesting result: it's basically a wash. LLVM
reduces most approaches to nearly the same hot loop, the apparent winner flips
from `options` to IDETs when the order is reversed, and most of the
distributions overlap. The reverse `is_supported` result also contains a large
outlier. The stable result here is the codegen / DCE comparison above, not a
claim that one approach is universally a few percent faster than another.

## Conclusion

Optimizing compilers are magic.
Rust's type system in incredibly powerful.
API design is hard.

For "dynamic" optional methods, I think IDETs the cleanest of the bunch (hence why I've decided to use the technique extensively in `gdbstub`).

-   Results in the cleanest `Controller` implementation
-   While the API is a _bit_ unorthodox, it's not too difficult to grok / implement, and comes with major benefits

## Future work

-   Creating a proc macro to simplify declaring and implementing IDETs

Just spit-balling here:

```rust
#[optional_trait_methods]
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    #[optional(group = "incdec")]
    fn inc(&mut self) -> Result<(), Self::Error>;

    #[optional(group = "incdec")]
    fn dec(&mut self) -> Result<(), Self::Error>;

    #[optional(group = "mul")]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;
}

#[optional_trait_methods]
impl Target for AdvancedTarget {
    type Error;

    fn get_state(&self) -> isize { /* ... */ }
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> { /* ... */ }

    // Would it be possible to omit these annotations, and have the proc macro
    // infer groups from the original declaration?

    #[optional(group = "incdec")]
    fn inc(&mut self) -> Result<(), Self::Error> { /* ... */ }
    #[optional(group = "incdec")]
    fn dec(&mut self) -> Result<(), Self::Error> { /* ... */ }

    #[optional(group = "mul")]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> { /* ... */ }
}
```
