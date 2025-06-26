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

Instead of working with the real-world inspiration for this project - the GDB remote serial protocol - let's consider a simpler, artificial protocol that has several similar properties: the Remote ALI Protocol

```rust
pub enum Command {
    // ---------- Base Protocol ---------- //
    /// Print the current accumulator state
    PrintState,
    /// Set the accumulator's state
    SetState(isize),
    // -------- IncDec Extensions -------- //
    /// Increment the accumulator
    Inc,
    /// Decrement the accumulator
    Dec,
    /// Meta-operation: both increment _and_ decrement the accumulator
    /// NOTE: this is a legacy feature, but it required for "compatibility reasons"
    IncDec,
    // ---------- Mul Extension ---------- //
    /// Multiply the accumulator by some value
    Mul(isize),
}
```

It's got a lot of things we care about:

-   common "base" protocol
-   several protocol extensions
-   commands which are mutually-dependent on one another (inc/dec + incdec)

For simplicity, I didn't include mutually-exclusive commands in this example protocol, but I will touch upon this use-case when discussing the various approaches.

So, how can we write a library to run this protocol? Well, let's start off with a controller:

```rust
pub struct TargetController<T: Target> {
    target: T,
}

impl<T: Target> TargetController<T> {
    /// Create a target controller that operates on the given target
    pub fn new(target: T) -> TargetController<T> {
        TargetController { target }
    }

    /// Run the specified commands with the given target
    pub fn run(&mut self, cmds: &[Command]) -> Result<(), Error<T::Error>>;
}
```

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

It's biggest pro is that it's immediately understandable to _anyone_.

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

```

Similar to [interface conversion](https://golang.org/doc/effective_go.html#interface_conversions) in Go.

-   https://stackoverflow.com/questions/27892375/can-i-do-type-introspection-with-trait-objects-and-then-downcast-it

#### Technical overview

The basic principles behind Inlineable Dyn Extension Traits are best explained though example:

-   (library) Create a new `trait MyFeat: Target { ... }`.
    -   Making `MyFeat` a supertrait of `Target` enables using `Target`'s
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

### (TODO?) explore how this could be simplified with specialization

-   https://www.reddit.com/r/rust/comments/8wbfi3/conditional_compilation_based_on_traits/
-   https://www.reddit.com/r/rust/comments/g5gly6/any_hacks_to_imitate_specialisation/

### (TODO): solving this problem with `Any`?

-   After all, this technique is pretty-much just down-casting a base type into a closed-set of known "derived" types, right?
    -   https://users.rust-lang.org/t/how-to-downcast-from-trait-object/5852
-   According to https://www.reddit.com/r/rust/comments/85ki2p/downcasting_a_trait_object/, there isn't any way to downcast trait objects, but third-party crates can do it
    -   maybe `traitcast`? https://docs.rs/traitcast/0.5.0/traitcast/index.html?
        -   Looks like https://github.com/CodeChain-io/intertrait is a strict improvement over it?
    -   `traitcast` seems to do pretty much this, albeit with some caveats
        -   not `#![no_std]` compatible
        -   relies on the `Any` trait
        -   Uses link-time shenanigans to construct a map of valid conversions
        -   (haven't benchmarked this), the use of lazy_static implies optimization won't be easy
        -   still requires users to explicitly specify that the concrete type implements the various traits
            -   `traitcast!` macro, or the `#[cast_to(...)]` marker

Wouldn't it be nice if you could just write `fn foo_ext(&mut self) -> Option<impl FooExt<Self>>;` instead? Alas, you can't do that in trait definitions.

## Summary and Comparisons

### Feature Comparison

:x: ❌
:heavy_minus_sign: ➖
:heavy_check_mark: ✔️
:grey_question: ❔

#### Methods can be enabled/disabled at _Runtime_

Every technique except for `cargo` features and specialization.

#### Easy for API consumers to understand + implement

|                                                    | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs  | Specialization |
| -------------------------------------------------- | ---------------- | -------------- | ------- | ----------- | ------ | -------------- |
| Looks like a "typical" Rust API                    | ✔️               | ✔️             | ✔️\*    | ❌          | ➖     | ✔️             |
| Uses "standard" method signatures                  | ✔️               | ✔️             | ❌      | ✔️          | ✔️     | ✔️             |
| Single "source of truth" for method implementation | ✔️               | ❌             | ✔️      | ❌\*\*      | ❌\*\* | ✔️             |

\* The `OptResult` type could be a source of confusion

\*\* See [Future work](#future-work) for how this could be mitigated

#### Easy for API authors to work with + maintain

|                                             | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs | Specialization |
| ------------------------------------------- | ---------------- | -------------- | ------- | ----------- | ----- | -------------- |
| Minimal boilerplate to invoke a method      | ✔️               | ➖             | ❌      | ➖          | ➖    | ✔️             |
| Check if method exists _before_ invoking it | N/A              | ✔️             | ❌      | ✔️          | ✔️    | N/A            |
| Easy to handle the "missing method" case    | ✔️               | ✔️             | ❌      | ✔️          | ✔️    | ✔️             |

#### Compile-time safety + performance

"If it compiles, it's a valid implementation"

|                                         | `cargo` Features | `is_supported` | Options | Fn Pointers | IDETs  | Specialization |
| --------------------------------------- | ---------------- | -------------- | ------- | ----------- | ------ | -------------- |
| Compile-time Mutually-Dependent methods | ✔️               | ❌             | ❌      | ✔️          | ✔️     | ✔️             |
| Compile-time Mutually-Exclusive methods | ✔️               | ❌             | ❌      | ✔️          | ✔️\*   | ❔             |
| Ensures effective dead-code-elimination | ✔️++             | ✔️\*\*         | ❌      | ✔️\*\*      | ✔️\*\* | ✔️             |

\* Assuming the implementation adheres to conventions and is not "adversarial"

\*\* May require additional "hints" to ensure dead code elimination

### Performance Analysis

[daniel5151/optional-trait-methods](https://github.com/daniel5151/optional-trait-methods) contains sample code for many of these methods, and includes assembly listings.

TODO: integrate content of `NOTES.md` into this document.

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
