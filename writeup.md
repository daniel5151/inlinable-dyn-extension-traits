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

Poking around, it looks like it's not a particularly well known technique.

-   https://stackoverflow.com/questions/30274091/is-it-possible-to-check-if-an-object-implements-a-trait-at-runtime
-   (sort-of similar) https://stackoverflow.com/a/28664881
    -   i.e: instead of statically validating an upcast, this approach is used to downcast into a known set of

TODO: explore how this could be simplified with specialization

-   https://www.reddit.com/r/rust/comments/8wbfi3/conditional_compilation_based_on_traits/

TODO: explore how this could be solved with `Any`

-   After all, this technique is pretty-much just down-casting a base type into a closed-set of known "derived" types

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
