# Optional Trait Methods in Rust

This repository compares six ways to model optional groups of trait methods:

- Cargo feature gates
- Boolean `is_supported` methods
- Optional method results
- Function-pointer operation tables
- Inlineable dyn extension traits (IDETs)
- Nightly `try_as_dyn`

The main discussion and qualified conclusions are in [writeup.md](writeup.md).

Runnable experiments are under [`complete/`](complete/).

## Reproducing experiments

The repository pins its compiler in `rust-toolchain.toml`. `nightly` is used in
order to experiment with `try_as_dyn`, which, at the time of writing (July 28,
2026) is not stable.

`sanity_check.sh` tests, lints, release-builds, and runs end-to-end checks for
all 18 combinations of three target types and six optional-method
implementations.

```sh
cd complete
./sanity_check.sh
```

Assembly generation is explicit about the compilation target and does not need
a target linker or emulator. The checked-in fully inlined listings are
marker-free; the interpretable listings include DCE diagnostics:

```sh
cargo install --version 0.2.1 rustfilt
rustup target add x86_64-unknown-linux-gnu
./generate_asm.sh --target x86_64-unknown-linux-gnu
```

Generated listings live under:

```text
complete/asm/{inlined,noinline}/<rust-target-triple>/
```

The checked-in interpretable listings contain unique strings in retained
extension paths. To include those markers in fully inlined listings as well,
pass `--dce-markers`. This fully marked diagnostic corpus is written under
`complete/target/dce-marker-asm/` rather than replacing the checked-in files:

```sh
./generate_asm.sh --target x86_64-unknown-linux-gnu --dce-markers
```

Focused IDET tests also cover a concrete target whose capabilities vary per
instance and an erased `dyn Target` supplied by the caller:

```sh
cargo test --no-default-features \
  --features 'target_basic using_traits always_inline traits_codegen_cases'
```

For local timing experiments:

```sh
cargo install hyperfine
./run_hyperfine.sh 1000000 1000000 42 30 5
```

All five arguments are required: debug iterations, release iterations, seed,
measured runs, and warmup runs. The benchmark uses one deterministic input
corpus for every binary, benchmarks both unoptimized debug builds and the same
`-Os` release profile as the assembly experiment, suppresses output, records
environment metadata, and runs candidates in both forward and reverse order.
Timing results are written under `complete/target/benchmark-results/` and are
intentionally not treated as portable facts.
