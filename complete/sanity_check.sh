#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd "$script_dir"

cargo fmt --all --check

implementations=(cfg_gates is_supported options fn traits try_as_dyn)
targets=(basic advanced faulty)

sanity_dir=$(mktemp -d "${TMPDIR:-/tmp}/optional-trait-methods-sanity.XXXXXX")
trap 'rm -rf "$sanity_dir"' EXIT

printf '%s\n' 'p' 's -42' 'p' '+' 'p' '* 3' '*~ 2' 'p' > "$sanity_dir/input.txt"
printf '%s\n' '0' '-42' 'Unsupported cmd!' '-42' 'Unsupported cmd!' 'Unsupported cmd!' '-42' > "$sanity_dir/expected-basic.txt"
printf '%s\n' '0' '-42' '-41' '-123' > "$sanity_dir/expected-advanced.txt"
printf '%s\n' '0' '-42' '-41' 'Unsupported cmd!' 'Unsupported cmd!' '-41' > "$sanity_dir/expected-faulty.txt"
printf '%s\n' '* 7' > "$sanity_dir/error-input.txt"
printf '%s\n' 'multiplying by 7 is unlucky!' > "$sanity_dir/error-expected.txt"

for target_name in "${targets[@]}"; do
    for implementation in "${implementations[@]}"; do
        features="target_${target_name} using_${implementation} always_inline"
        echo "checking target=$target_name implementation=$implementation"
        cargo test --locked --all-targets --no-default-features --features "$features"
        cargo clippy --locked --all-targets --no-default-features \
            --features "$features" -- -D warnings
        cargo build --locked --release --no-default-features --features "$features"

        actual="$sanity_dir/actual-${target_name}-${implementation}.txt"
        target/release/optional-trait-methods < "$sanity_dir/input.txt" > "$actual"
        if ! diff -u "$sanity_dir/expected-${target_name}.txt" "$actual"; then
            echo "error: end-to-end output mismatch for target=$target_name implementation=$implementation" >&2
            exit 1
        fi

        if [[ "$target_name" == advanced ]]; then
            set +e
            target/release/optional-trait-methods \
                < "$sanity_dir/error-input.txt" \
                > "$sanity_dir/error-actual-${implementation}.txt"
            exit_code=$?
            set -e
            if [[ "$exit_code" != 1 ]]; then
                echo "error: expected target error exit code 1; got $exit_code for implementation=$implementation" >&2
                exit 1
            fi
            if ! diff -u \
                "$sanity_dir/error-expected.txt" \
                "$sanity_dir/error-actual-${implementation}.txt"; then
                echo "error: target error output mismatch for implementation=$implementation" >&2
                exit 1
            fi
        fi
    done
done

if cargo check --no-default-features >/dev/null 2>&1; then
    echo "error: a build with no target/implementation unexpectedly succeeded" >&2
    exit 1
fi
if cargo check --no-default-features \
    --features 'target_basic target_advanced using_traits' >/dev/null 2>&1; then
    echo "error: a build with multiple targets unexpectedly succeeded" >&2
    exit 1
fi
if cargo check --no-default-features \
    --features 'target_basic using_traits using_fn' >/dev/null 2>&1; then
    echo "error: a build with multiple implementations unexpectedly succeeded" >&2
    exit 1
fi
