# (working title) Optional Trait Methods in Rust

## Introduction

## A Motivating Example - An Extensible Protocol

## Approach A - Using Options

### Using Bare `Option<Result<T, E>>`

-   Con: Can't use `?` operator in function body

### Introducing `OptResult<T, E>`

## Approach B - Using Function Pointers

Ahh, the good 'ol C-style approach.

-   NOTE: can't use `Self::Error`, must use either `<Self as Target>::Error`, or the concrete error type itself

### Bundling Related Function Pointers into a single `struct`

... but wait a second, isn't this just us rolling our own vtables? why not let the compiler do it for us!

## Approach C - Using `dyn` Extension Traits

i.e: downcasting trait objects

Poking around, it looks like it's not a particularly well known technique.

-   https://stackoverflow.com/questions/30274091/is-it-possible-to-check-if-an-object-implements-a-trait-at-runtime
-   https://stackoverflow.com/a/55914318

Similar to [interface conversion](https://golang.org/doc/effective_go.html#interface_conversions) in Go.

-   https://stackoverflow.com/questions/27892375/can-i-do-type-introspection-with-trait-objects-and-then-downcast-it

TODO: explore how this could be simplified with specialization

-   https://www.reddit.com/r/rust/comments/8wbfi3/conditional_compilation_based_on_traits/

TODO: could this problem be solved with `Any`?

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

## Conclusion

Optimizing compilers are magic.
Rust's type system in incredibly powerful.
API design is hard.

Weigh pros/cons of each approach:

:x: ❌
:heavy_minus_sign: ➖
:heavy_check_mark: ✔️

|                               | Options | Fn Pointers | `dyn` Ext Traits |
| ----------------------------- | ------- | ----------- | ---------------- |
| Easy to grok                  | ✔️      | ❌          | ➖               |
| Group methods at compile-time | ❌      | ✔️          | ✔️               |
| Use regular `Result`          | ❌      | ✔️          | ✔️               |
| Query available methods       | ❌      | ✔️          | ✔️               |
| Ergonomic implementor API     | ✔️      | ❌          | ➖               |
| Ergonomic consumer API        | ❌      | ➖          | ✔️               |

I think Approach C is the cleanest of the bunch (hence why I'm using it in `gdbstub`).

-   Results in the cleanest `Controller` implementation
-   While the API is a _bit_ unorthodox, it's not too difficult to grok / implement

Future work?

-   Creating a proc macro to simplify declaring and implementing Approach C

Just spit-balling here:

```rust
#[optional_trait_methods]
pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    #[optional(feature = incdec)]
    fn inc(&mut self) -> Result<(), Self::Error>;

    #[optional(feature = incdec)]
    fn dec(&mut self) -> Result<(), Self::Error>;

    #[optional(feature = mul)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;
}

#[optional_trait_methods]
impl Target for AdvancedTarget {
    type Error;

    fn get_state(&self) -> isize { /* ... */ }
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> { /* ... */ }

    #[optional(feature = incdec)] //
    fn inc(&mut self) -> Result<(), Self::Error> { /* ... */ }
    #[optional(feature = incdec)]
    fn dec(&mut self) -> Result<(), Self::Error> { /* ... */ }

    #[optional(feature = mul)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> { /* ... */ }
}
```
