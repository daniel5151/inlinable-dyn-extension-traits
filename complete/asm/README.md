# Checked-in assembly

The directory layout records both the inlining mode and the Rust compilation
target:

```text
asm/
├── inlined/
│   └── <rust-target-triple>/
└── noinline/
    └── <rust-target-triple>/
```

- `inlined` is the production-style build. `parse_command` and `handle` may be
  folded into `run_optional_trait_methods`.
- `noinline` enables the repository's `interpretable_asm` feature so those two
  functions remain independently inspectable.

Both modes retain `#[inline(never)]` on the example target's leaf operations.
The `always_inline` feature is enabled for small capability-conversion helpers.

These listings retain the program's normal printing paths. Timed binaries use
the `bench` feature to replace printing with `black_box`, avoiding high-variance
system-call overhead. The checked-in assembly and timed binaries therefore use
the same optimization profile, but are intentionally not identical builds.

Listings are generated from the library target. That permits cross-compilation
without a target linker, but it also means the files may contain functions that
would later be discarded while linking a final executable. Compare named hot
functions or the fully inlined run loop; do not describe the total `.s` file
size as binary size.

## Generate listings

The compiler is pinned by the repository-level `rust-toolchain.toml`.
Install the standard library and `rustfilt`, then name the target explicitly:

```sh
cargo install --version 0.2.1 rustfilt
rustup target add x86_64-unknown-linux-gnu
./generate_asm.sh --target x86_64-unknown-linux-gnu
```

`--target` may be repeated. With no argument, the script uses the compiler's
host triple. The script validates every generated file with `asm_stats.py` and
fails rather than accepting empty statistics.

For a Rust target whose assembly syntax is not yet understood by
`asm_stats.py`, pass `--skip-stats`. Generation remains target-qualified, but
the resulting listing is intentionally not presented as an analyzed result.

Examples:

```sh
./generate_asm.sh \
  --target aarch64-apple-darwin \
  --target x86_64-unknown-linux-gnu

./asm_stats.py --mode inlined --target-triple x86_64-unknown-linux-gnu
./asm_stats.py --mode noinline --target-triple aarch64-apple-darwin
```

## Manual inline-sensitivity inspection

To inspect sensitivity to forced helper inlining, compare marker-free builds
with and without `always_inline`:

```sh
# forced helper inlining
CARGO_INCREMENTAL=0 cargo rustc --locked --lib --release \
  --no-default-features \
  --features 'target_advanced using_traits always_inline' \
  -- --emit asm

# unannotated helpers
CARGO_INCREMENTAL=0 cargo rustc --locked --lib --release \
  --no-default-features \
  --features 'target_advanced using_traits' \
  -- --emit asm
```

These are manual inspections, not snapshot or instruction-threshold tests.

`asm_stats.py` counts textual assembly instructions. This is useful for
same-target DCE comparisons, but it is neither encoded object size nor a model
of execution cost.
