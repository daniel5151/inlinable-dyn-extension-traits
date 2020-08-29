# Optional Trait Methods in Rust

An exploration into various ways optional trait methods can be implemented in Rust.

-   The `complete` folder contains a big-blob of example code which shows off the various techniques.
    -   The code is a bit of a mess, but it's done to make the outputted assembly as easy to analyze as possible.
        -   it's a `#![no_std]` binary which links with `libc`
        -   doesn't use any of rust's formatting code.
        -   makes extensive use of `cfg_if` to remove any dead code
    -   The `godbolt.sh` script outputs the crate as a single file that can be copy/pasted into godbolt.org
        -   `godbolt.sh` takes two arguments: the `Target` implementation (i.e: `basic`, `advanced`, `faulty`), and optional trait method implementation (i.e: `option`, `fn`, `traits`).
-   `writeup.md` contains the draft version of a writeup discussing the various techniques
