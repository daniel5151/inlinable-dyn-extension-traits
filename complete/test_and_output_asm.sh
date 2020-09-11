#!/bin/bash
set -e

for target in "basic" "advanced" "faulty"
do
    for impl in "options" "fn" "traits"
    do
        # yes, yes, i could probably find some way to do this without cargo clean each time
        # but this works, and the project compiles super quickly, so it's fiiiiiiine
        cargo clean
        # sanity-check that it works
        cargo run --no-default-features --features="target_${target} using_${impl}"

        # generate asm listing
        asmfile=./asm_output/${target}_${impl}.s
        cargo rustc --no-default-features --features="target_${target} using_${impl}" --release -- --emit asm -C "llvm-args=-x86-asm-syntax=intel"
        # demangle symbols
        c++filt < ./target/release/deps/*.s > $asmfile
        # remove noisy assembler directives
        sed -i -E '/^\t\.(section|p2align|type|file|intel_|text|cfi|size|hidden|globl)/d' $asmfile
    done
done
