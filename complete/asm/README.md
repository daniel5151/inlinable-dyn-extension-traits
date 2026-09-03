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

- `inlined` is the marker-free, production-style build. `parse_command` and
  `handle` may be folded into `run_optional_trait_methods`.
- `noinline` enables the repository's `interpretable_asm` and `dce_markers`
  features so those two functions remain independently inspectable and
  retained extension paths contain searchable marker strings.

Both modes normally retain `#[inline(never)]` on the example target's leaf
operations. The no-op-handler approach is the exception: its optional handlers
also serve as capability probes and therefore use `always_inline`. Other
approaches use that feature only for small capability-conversion helpers. Only
`inlined` disables `dce_markers`; its instruction counts therefore omit the
diagnostic `black_box` operations.

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

The checked-in `noinline` listings already include DCE markers. Pass
`--dce-markers` to enable them in `inlined` listings too. That fully marked
corpus is written under `target/dce-marker-asm/` and remains separate from the
checked-in artifacts.

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

## Focused runtime and erased cases

The runtime-varying and erased IDET entry points are emitted by enabling
`traits_codegen_cases`. The feature also emits static Basic and IncDec-only
reference entry points so the retained branch and vtable work can be compared
against equivalent command handling:

```sh
CARGO_INCREMENTAL=0 cargo rustc --locked --lib --release \
  --target-dir target/manual-idet-codegen \
  --no-default-features \
  --features 'target_basic using_traits always_inline traits_codegen_cases' \
  -- --emit asm
```

The normal executable does not call these entry points. A linked build still
discards them when the feature is enabled, so use the library assembly above to
inspect them.

For manual timing, build the focused driver with marker-free output and cycle
through `+`, `-`, and `+-` commands:

```sh
cargo build --locked --release --bin idet-cases-bench \
  --no-default-features \
  --features 'target_basic using_traits always_inline traits_codegen_cases bench'

hyperfine --warmup 3 --runs 20 --shell=none \
  'target/release/idet-cases-bench static-basic 100000000' \
  'target/release/idet-cases-bench runtime-disabled 100000000' \
  'target/release/idet-cases-bench erased-basic 100000000' \
  'target/release/idet-cases-bench static-advanced 100000000' \
  'target/release/idet-cases-bench runtime-enabled 100000000' \
  'target/release/idet-cases-bench erased-advanced 100000000'

hyperfine --warmup 3 --runs 20 --shell=none \
  'target/release/idet-cases-bench runtime-alternating 100000000' \
  'target/release/idet-cases-bench erased-alternating 100000000'
```

These are local microbenchmarks of the focused one-command entry points. Run the
main comparison in reverse order too; the results are specific to the host and
compiler rather than a portable IDET cost model.

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
