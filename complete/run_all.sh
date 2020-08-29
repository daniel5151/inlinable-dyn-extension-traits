#!/bin/sh
set -e

for target in "basic", "advanced", "faulty"
do
    for impl in "options", "fn", "traits"
    do
        cargo run --no-default-features --features="target_$target using_$impl"
    done
done
