#!/bin/bash
set -e

# Build the Rust command generator harness first
cargo build --release --bin harness

mkdir -p ./asm_output ./asm_output_inlined

for target in "basic" "advanced" "faulty"
do
    for impl in "options" "fn" "traits"
    do
        # 1. Generate interpretable asm listing (with inline(never))
        rm -f ./target/release/deps/optional_trait_methods-*
        rm -f ./target/release/optional-trait-methods
        asmfile=./asm_output/${target}_${impl}.s
        cargo rustc --bin optional-trait-methods --no-default-features --features="target_${target} using_${impl} interpretable_asm" --release -- --emit asm -C "llvm-args=-x86-asm-syntax=intel"
        
        rustfilt < ./target/release/deps/optional_trait_methods-*.s > $asmfile
        sed -i -E '/^\t\.(section|p2align|type|file|intel_|text|cfi|size|hidden|globl)/d' $asmfile

        # Sanity-check harness
        ./target/release/harness 1000 | ./target/release/optional-trait-methods > /dev/null

        # 2. Generate fully-inlined asm listing (without inline(never))
        rm -f ./target/release/deps/optional_trait_methods-*
        rm -f ./target/release/optional-trait-methods
        asmfile_inlined=./asm_output_inlined/${target}_${impl}.s
        cargo rustc --bin optional-trait-methods --no-default-features --features="target_${target} using_${impl}" --release -- --emit asm -C "llvm-args=-x86-asm-syntax=intel"

        rustfilt < ./target/release/deps/optional_trait_methods-*.s > $asmfile_inlined
        sed -i -E '/^\t\.(section|p2align|type|file|intel_|text|cfi|size|hidden|globl)/d' $asmfile_inlined

        ./target/release/harness 1000 | ./target/release/optional-trait-methods > /dev/null
    done
done

python3 ./asm_stats.py

