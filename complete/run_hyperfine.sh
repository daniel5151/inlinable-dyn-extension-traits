#!/bin/bash
# run_hyperfine.sh
set -e

ITERATIONS_DEBUG=131072
ITERATIONS_RELEASE=262144

if [ ! -f "Cargo.toml" ]; then
    echo "Error: Please run this script from the 'complete' directory."
    exit 1
fi

echo "Building binaries..."

build_bin() {
    local impl=$1
    local mode=$2
    local iterations=$3

    local release_flag=""
    if [ "$mode" = "release" ]; then
        release_flag="--release"
    fi

    touch src/main.rs
    BENCH_ITERATIONS=$iterations cargo build --no-default-features --features="target_advanced using_${impl} bench" $release_flag >/dev/null 2>&1

    cp target/${mode}/optional-trait-methods target/${mode}/bench-${impl}
}

for impl in "options" "fn" "traits"; do
    build_bin "$impl" "debug" "$ITERATIONS_DEBUG"
    build_bin "$impl" "release" "$ITERATIONS_RELEASE"
done

echo "Running hyperfine benchmark for Debug Mode ($ITERATIONS_DEBUG iterations)..."
hyperfine --warmup 3 \
    "./target/debug/bench-options" \
    "./target/debug/bench-fn" \
    "./target/debug/bench-traits"

echo ""
echo "Running hyperfine benchmark for Release Mode ($ITERATIONS_RELEASE iterations)..."
hyperfine --warmup 3 \
    "./target/release/bench-options" \
    "./target/release/bench-fn" \
    "./target/release/bench-traits"
