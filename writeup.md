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
        /// Scale factor extension (nested within Mul) (`*~ <n>`)
        ScaleFactor(isize),
    }
}

#[derive(Clone, Copy, Debug)]
pub enum Command {
    Base(ext::BaseCommand),
    IncDec(ext::IncDecCommand),
    Mul(ext::MulCommand),
}
```

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

-   **Release Mode (`-O3` / `--release`) — 100% Identical Codegen:**
    When `TargetController<T>` is monomorphized for a concrete target type `T`, LLVM optimizes `try_as_dyn_mut` at compile-time. If `T` implements the extension trait, LLVM resolves `try_as_dyn_mut` directly to `Some(&mut target)` and inlines the handler; if `T` does not implement the trait, LLVM resolves it to `None` and completely prunes the branch.
    As measured across all benchmark targets (`asm_stats.py`), instruction counts for `parse_command` and `handle` are **100% identical** between IDETs (`using_traits`) and `try_as_dyn` (`using_try_as_dyn`):
    -   `BasicTarget`: **223 instrs** (100% DCE of unused extension parsers & handlers)
    -   `FaultyTarget`: **272 instrs** (selective DCE of `Mul` and `ScaleFactor`)
    -   `AdvancedTarget`: **344 instrs** (full protocol support)
-   **Debug Mode (`-O0`) — Runtime Trait Resolution:**
    In unoptimized debug builds, `try_as_dyn_mut` invokes core trait resolution machinery, whereas IDETs execute a direct monomorphized method call returning `Some(self)`. However, benchmark timing under stdin streaming shows both execute within tight statistical noise (~115 ms).

In summary, `try_as_dyn` provides the **exact same zero-cost assembly and dead-code elimination benefits as IDETs** for static type-level feature gating, while removing target-side boilerplate. However, IDETs remain the superior solution when per-instance runtime feature toggling is required.

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

Based on local benchmarks and assembly inspection:
-   **Inlining & Vtables:** Using `#[inline(always)]` doesn't improve the quality of the generated code directly, but it does seem to help the dead-code-eliminator to remove the unused vtables, resulting in a marginally smaller binary (which is crucial in embedded/`no_std` applications).
-   **Function Pointers vs IDETs vs `try_as_dyn`:** The generated assembly for the function pointers approach (`using_fn`), IDETs traits approach (`using_traits`), and nightly `try_as_dyn` approach (`using_try_as_dyn`) is virtually identical instruction-for-instruction across all targets and functions.
-   **Standalone Assembly Symbols:** Marking `parse_command` and `handle` with `#[inline(never)]` (via the `interpretable_asm` feature) isolates them as standalone symbols in `asm_output/*.s`, allowing automated metrics collection (`asm_stats.py`) to measure exact instruction counts per function without interference from the outer event loop.
-   **Target Leaf Function Inlining:** Target methods (`get_state`, `set_state`, `inc`, `dec`, etc.) retain unconditional `#[inline(never)]` annotations. In our simplified benchmark targets, these methods perform trivial state mutations; marking them `#[inline(never)]` models real-world protocol implementations (such as `gdbstub` targets) where leaf handlers perform non-trivial I/O, hardware register access, or memory manipulation that an optimizing compiler would not inline into the main packet loop.

#### Target-Level Assembly DCE Inspection (`BasicTarget` vs `FaultyTarget` vs `AdvancedTarget`)

Comparing generated assembly for `parse_command` and `handle` across targets (`asm_output/*.s`) highlights how capability-gated parsing achieves fine-grained dead-code elimination proportional to the exact set of extensions implemented by each target:

| Implementation / Metric                        | `BasicTarget`<br>*(Base Protocol ONLY)*                           | `FaultyTarget`<br>*(Base + `IncDec`)*                       | `AdvancedTarget`<br>*(All Extensions)* |
| :--------------------------------------------- | :---------------------------------------------------------------- | :---------------------------------------------------------- | :------------------------------------- |
| **`parse_command`**                            |                                                                   |                                                             |                                        |
| • `cfg_gates`                                  | **22 instrs**<br>• **100% DCE** of enum variants & parser         | **50 instrs**<br>• Selective DCE of `Mul` and `ScaleFactor` | **90 instrs**<br>• Full parser         |
| • `is_supported` / `traits` / `fn` / `try_dyn` | **28 instrs**<br>• **100% DCE** of `IncDec`, `Mul`, `ScaleFactor` | **49 instrs**<br>• Selective DCE of `Mul` and `ScaleFactor` | **90 / 91 instrs**<br>• Full parser    |
| • `options`                                    | **90 instrs**<br>• Zero DCE (speculative parse)                   | **90 instrs**<br>• Zero DCE (speculative parse)             | **90 instrs**<br>• Full parser         |
| **`handle`**                                   |                                                                   |                                                             |                                        |
| • `cfg_gates`                                  | **12 instrs**<br>• **100% DCE** (omits unneeded match arms)       | **35 instrs**<br>• Selective DCE of handlers                | **62 instrs**<br>• Full handler        |
| • `traits` / `fn` / `try_dyn`                  | **31 instrs**<br>• **100% DCE** of extension handlers             | **53 instrs**<br>• Selective DCE of handlers                | **69 instrs**<br>• Full handler        |
| • `is_supported`                               | **48 instrs**<br>• Checks `_supported` bools                      | **58 instrs**<br>• Selective DCE of handlers                | **62 instrs**<br>• Full handler        |
| • `options`                                    | **69 instrs**<br>• Retains all extension branches                 | **91 instrs**<br>• Retains all extension branches           | **126 instrs**<br>• Full handler       |
| **Total Measured Instructions**                |                                                                   |                                                             |                                        |
| • `cfg_gates`                                  | **188 instrs**                                                    | **251 instrs**                                              | **332 instrs**                         |
| • `traits` / `fn` / `try_dyn`                  | **223 instrs**                                                    | **272 instrs**                                              | **344 instrs**                         |
| • `is_supported`                               | **229 instrs**                                                    | **273 instrs**                                              | **332 instrs**                         |
| • `options`                                    | **347 instrs**                                                    | **373 instrs**                                              | **431 instrs**                         |
| **Instruction Reduction**                      | **~34–46% reduction**                                             | **~27–33% reduction**                                       | **~20–23% reduction**                  |

Key observation: On targets with partial protocol support (`BasicTarget` and `FaultyTarget`), compile-time and runtime capability-gated dispatch (`cfg_gates`, `is_supported`, `using_fn`, and `using_traits`) enables LLVM to prune both unused packet parsing logic in `parse_command` AND unsupported command handlers in `handle`. Conversely, `using_options` emits the full 90-instruction parser and bloated handler unconditionally across all targets, resulting in **up to 46% more instructions** in the target executable (347 instrs vs 188–223 instrs).

*Note on the instruction spike in `handle` for `options` on `AdvancedTarget`:* Unlike capability-gated approaches where LLVM proves extension support before invocation and prunes fallback paths, `using_options` invokes methods returning `OptResult<(), E>` (`Result<(), MaybeUnimpl<E>>`). LLVM must emit defensive code for `map_unimpl()` enum unwrapping (`MaybeUnimpl` -> `Option`), runtime `Some`/`None` branching to `unsupported_cmd()`, and `(inc_impl, dec_impl)` tuple checks for `Error::InvalidImpl`. This nearly doubles the instruction count of `handle` even when all extensions are supported (126 instrs vs. 62–69 instrs).

##### Interpretable Assembly vs. Fully-Inlined Production Assembly

The repository builds two separate sets of assembly listings:

1. **Interpretable Assembly (`asm_output/`)**: Compiled with the repo-wide `interpretable_asm` feature (which applies `#[inline(never)]` to key functions like `parse_command` and `handle`). This isolates `parse_command` and `handle` into distinct, named assembly symbols so `asm_stats.py` can measure exact instruction counts per function.
2. **Fully-Inlined Production Assembly (`asm_output_inlined/`)**: Compiled without `interpretable_asm` (omitting `#[inline(never)]`). In this mode, LLVM flattens the entire parsing, handling, and main execution loop into a single streamlined block.

Comparing the fully-inlined assembly outputs (`asm_output_inlined/`) demonstrates that `#[inline(never)]` is strictly an inspection aid and does not "fake" the Dead-Code Elimination effect:

- **`basic_traits.s` / `basic_fn.s` (Inlined)**: LLVM completely deletes all parsing byte checks for `+`, `-`, `+-`, `*`, `*~`, integer parsing routines, and associated string constants, producing a total binary size of **4.1 KB (216 assembly lines)** while maintaining realistic standalone calls to target leaf handlers (`get_state` / `set_state`).
- **`basic_options.s` (Inlined)**: Lacking capability pre-checks, LLVM is forced to retain all speculative parsing branches and string constants, resulting in a binary size of **7.3 KB (397 assembly lines)**—**a ~46% reduction in total assembly lines for `basic_traits` (216 vs 397)**.

This confirms that IDET capability-gated dispatch enables LLVM to achieve end-to-end Dead-Code Elimination across the entire compiled binary.

#### Assembly & Benchmarking Methodology
To measure realistic end-to-end command parsing and trait/function dispatch performance, commands are streamed via stdin from an external Rust harness (`src/bin/harness.rs`).

*   *Harness & Streaming:* The Rust harness uses `SeedableRng::from_entropy()` to stream randomized command lines (`p`, `s <n>`, `+`, `-`, `+-`, `* <n>`, `*~ <n>`) over stdout, which are piped directly into stdin of the controller binary.
*   *Hyperfine Integration:* Each `hyperfine` trial run streams a fresh randomized input sequence directly into the benchmarked target (`./target/release/harness N | ./target/release/bench-<impl>`). This guarantees independent randomization for every trial run while cleanly isolating relative performance differences between the five implementations.

Below are the `hyperfine` benchmark results comparing **`cargo` features** (`using_cfg_gates`), `is_supported` (`using_is_supported`), **Options** (`using_options`), **Fn Pointers** (`using_fn`), and **IDETs** (`using_traits`) across 131,072 iterations in Debug mode and 262,144 iterations in Release mode:

##### Debug Mode (131,072 iterations)

| Implementation                      | Mean ± Std Dev        | Min … Max           |
| :---------------------------------- | :-------------------- | :------------------ |
| **`cargo` Features** (`cfg_gates`)  | **110.0 ms ± 1.2 ms** | 108.5 ms … 112.5 ms |
| **`is_supported`** (`is_supported`) | **114.7 ms ± 1.2 ms** | 113.1 ms … 117.8 ms |
| **Options** (`using_options`)       | **116.7 ms ± 1.0 ms** | 115.3 ms … 119.5 ms |
| **Fn Pointers** (`using_fn`)        | **117.3 ms ± 1.3 ms** | 115.5 ms … 120.3 ms |
| **IDETs** (`using_traits`)          | **115.9 ms ± 1.1 ms** | 114.4 ms … 118.6 ms |
| **`try_as_dyn`** (`try_as_dyn`)     | **115.7 ms ± 1.0 ms** | 114.2 ms … 117.5 ms |

*In Debug mode (`-O0`), all implementations execute virtually identically (~110–117 ms), within tight statistical noise.*

##### Release Mode (262,144 iterations)

| Implementation                      | Mean ± Std Dev        | Min … Max           |
| :---------------------------------- | :-------------------- | :------------------ |
| **`cargo` Features** (`cfg_gates`)  | **198.8 ms ± 2.7 ms** | 194.3 ms … 202.9 ms |
| **`is_supported`** (`is_supported`) | **199.1 ms ± 3.3 ms** | 194.3 ms … 203.9 ms |
| **Options** (`using_options`)       | **209.6 ms ± 4.1 ms** | 204.5 ms … 216.5 ms |
| **Fn Pointers** (`using_fn`)        | **198.5 ms ± 2.9 ms** | 194.8 ms … 203.7 ms |
| **IDETs** (`using_traits`)          | **197.8 ms ± 3.5 ms** | 193.7 ms … 204.4 ms |
| **`try_as_dyn`** (`try_as_dyn`)     | **199.7 ms ± 4.3 ms** | 193.4 ms … 206.5 ms |

*In Release mode (`-O3`), LLVM completely devirtualizes and inlines capability checks across `cfg_gates`, `is_supported`, `using_fn`, `using_traits`, and `try_as_dyn`, rendering runtime performance virtually identical (~197–199 ms), while `using_options` incurs overhead (~209 ms) due to un-pruned branches and enum unwrapping.*

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
