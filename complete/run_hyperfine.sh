#!/bin/bash
# run_hyperfine.sh
set -e

ITERATIONS_DEBUG=${ITERATIONS_DEBUG:-131072}
ITERATIONS_RELEASE=${ITERATIONS_RELEASE:-262144}

if [ ! -f "Cargo.toml" ]; then
    echo "Error: Please run this script from the 'complete' directory."
    exit 1
fi

echo "Building binaries..."
cargo build --release --bin harness

build_bin() {
    local impl=$1
    local mode=$2

    local release_flag=""
    if [ "$mode" = "release" ]; then
        release_flag="--release"
    fi

    touch src/main.rs
    cargo build --bin optional-trait-methods --no-default-features --features="target_advanced using_${impl}" $release_flag >/dev/null 2>&1

    cp target/${mode}/optional-trait-methods target/${mode}/bench-${impl}
}

for impl in "cfg_gates" "is_supported" "options" "fn" "traits"; do
    build_bin "$impl" "debug"
    build_bin "$impl" "release"
done

echo "Running hyperfine benchmark for Debug Mode ($ITERATIONS_DEBUG iterations)..."
hyperfine --warmup 3 \
    "./target/release/harness $ITERATIONS_DEBUG | ./target/debug/bench-cfg_gates" \
    "./target/release/harness $ITERATIONS_DEBUG | ./target/debug/bench-is_supported" \
    "./target/release/harness $ITERATIONS_DEBUG | ./target/debug/bench-options" \
    "./target/release/harness $ITERATIONS_DEBUG | ./target/debug/bench-fn" \
    "./target/release/harness $ITERATIONS_DEBUG | ./target/debug/bench-traits"

echo ""
echo "Running hyperfine benchmark for Release Mode ($ITERATIONS_RELEASE iterations)..."
hyperfine --warmup 3 \
    "./target/release/harness $ITERATIONS_RELEASE | ./target/release/bench-cfg_gates" \
    "./target/release/harness $ITERATIONS_RELEASE | ./target/release/bench-is_supported" \
    "./target/release/harness $ITERATIONS_RELEASE | ./target/release/bench-options" \
    "./target/release/harness $ITERATIONS_RELEASE | ./target/release/bench-fn" \
    "./target/release/harness $ITERATIONS_RELEASE | ./target/release/bench-traits"


