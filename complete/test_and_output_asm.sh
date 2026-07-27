#!/bin/bash
set -e

# Build the Rust command generator harness first
cargo build --release --bin harness

for target in "basic" "advanced" "faulty"
do
    for impl in "options" "fn" "traits"
    do
        # Remove only the root crate's compiled artifacts from the build directory,
        # forcing Cargo to rebuild the root crate and regenerate the assembly file
        # while keeping the compiled dependencies intact.
        rm -f ./target/release/deps/optional_trait_methods-*
        rm -f ./target/release/optional-trait-methods

        # generate asm listing
        asmfile=./asm_output/${target}_${impl}.s
        cargo rustc --bin optional-trait-methods --no-default-features --features="target_${target} using_${impl}" --release -- --emit asm -C "llvm-args=-x86-asm-syntax=intel"
        
        # demangle symbols
        rustfilt < ./target/release/deps/optional_trait_methods-*.s > $asmfile
        # remove noisy assembler directives
        sed -i -E '/^\t\.(section|p2align|type|file|intel_|text|cfi|size|hidden|globl)/d' $asmfile

        # sanity-check that the compiled release binary works by piping commands from the Rust harness
        ./target/release/harness 1000 | ./target/release/optional-trait-methods > /dev/null
    done
done

