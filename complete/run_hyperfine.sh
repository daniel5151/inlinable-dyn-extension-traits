#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd "$script_dir"

for command_name in cargo hyperfine rustc; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
        echo "error: required command not found: $command_name" >&2
        exit 1
    fi
done

if (($# != 5)); then
    echo "usage: $0 <debug-iterations> <release-iterations> <seed-u64> <runs> <warmups>" >&2
    exit 2
fi

iterations_debug=$1
iterations_release=$2
seed=$3
runs=$4
warmup=$5

if [[ ! "$iterations_debug" =~ ^[1-9][0-9]*$ ]] || [[ ! "$iterations_release" =~ ^[1-9][0-9]*$ ]]; then
    echo "error: debug and release iterations must be positive integers" >&2
    exit 2
fi
if [[ ! "$seed" =~ ^[0-9]+$ ]]; then
    echo "error: seed must be an unsigned 64-bit integer" >&2
    exit 2
fi
if [[ ! "$runs" =~ ^[1-9][0-9]*$ ]]; then
    echo "error: runs must be a positive integer" >&2
    exit 2
fi
if [[ ! "$warmup" =~ ^[0-9]+$ ]]; then
    echo "error: warmups must be a non-negative integer" >&2
    exit 2
fi

result_dir="target/benchmark-results"
mkdir -p "$result_dir"

cargo build --locked --release --bin harness
implementations=(cfg_gates is_supported options fn traits try_as_dyn)

run_profile() {
    local profile=$1
    local profile_iterations=$2
    local profile_description
    local target_profile
    local implementation index
    local -a build_flags=()

    if [[ "$profile" == "release" ]]; then
        profile_description="release (-Os)"
        target_profile="release"
        build_flags+=(--release)
    else
        profile_description="debug (unoptimized)"
        target_profile="debug"
    fi

    local binary_dir="$result_dir/bin-$profile"
    local input_file="$result_dir/input-${profile_iterations}-${seed}.txt"
    mkdir -p "$binary_dir"
    target/release/harness "$profile_iterations" "$seed" > "$input_file"

    for implementation in "${implementations[@]}"; do
        local features="target_advanced using_${implementation} always_inline bench"
        cargo build --locked "${build_flags[@]}" --bin optional-trait-methods \
            --no-default-features --features "$features"
        cp "target/$target_profile/optional-trait-methods" "$binary_dir/$implementation"
    done

    local input_hash
    if command -v sha256sum >/dev/null 2>&1; then
        input_hash=$(sha256sum "$input_file" | awk '{print $1}')
    else
        input_hash=$(shasum -a 256 "$input_file" | awk '{print $1}')
    fi

    local metadata_file="$result_dir/metadata-$profile.txt"
    {
        echo "profile=$profile_description"
        echo "iterations=$profile_iterations"
        echo "seed=$seed"
        echo "runs=$runs"
        echo "warmup=$warmup"
        echo "input_sha256=$input_hash"
        echo "hyperfine=$(hyperfine --version)"
        uname -a
        rustc -Vv
    } > "$metadata_file"

    local -a forward_commands=()
    local -a reverse_commands=()
    for implementation in "${implementations[@]}"; do
        forward_commands+=("$binary_dir/$implementation")
    done
    for ((index=${#implementations[@]} - 1; index >= 0; index--)); do
        implementation=${implementations[index]}
        reverse_commands+=("$binary_dir/$implementation")
    done

    hyperfine --warmup "$warmup" --runs "$runs" \
        --shell=none --input "$input_file" \
        --export-json "$result_dir/forward-$profile.json" \
        "${forward_commands[@]}"
    hyperfine --warmup "$warmup" --runs "$runs" \
        --shell=none --input "$input_file" \
        --export-json "$result_dir/reverse-$profile.json" \
        "${reverse_commands[@]}"

    echo "benchmark metadata: $metadata_file"
    echo "benchmark results: $result_dir/{forward,reverse}-$profile.json"
}

run_profile debug "$iterations_debug"
run_profile release "$iterations_release"
