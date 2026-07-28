#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd "$script_dir"

target_triples=()
skip_stats=false
while (($#)); do
    case "$1" in
        --target)
            if (($# < 2)); then
                echo "error: --target requires a Rust target triple" >&2
                exit 2
            fi
            target_triples+=("$2")
            shift 2
            ;;
        --skip-stats)
            skip_stats=true
            shift
            ;;
        --help|-h)
            echo "usage: $0 [--target <rust-target-triple>]... [--skip-stats]"
            echo "defaults to rustc's host triple; --target may be repeated"
            echo "--skip-stats permits targets whose assembly syntax is not yet parsed"
            exit 0
            ;;
        *)
            echo "error: unknown argument: $1" >&2
            exit 2
            ;;
    esac
done

for command_name in cargo rustc rustup rustfilt python3; do
    if ! command -v "$command_name" >/dev/null 2>&1; then
        echo "error: required command not found: $command_name" >&2
        exit 1
    fi
done

expected_rustc_commit=9ec5d5f32e19d250c7fbeaa90978c79105b39dee
actual_rustc_commit=$(rustc -Vv | sed -n 's/^commit-hash: //p')
if [[ "$actual_rustc_commit" != "$expected_rustc_commit" ]]; then
    echo "error: rustc does not match the repository's pinned compiler" >&2
    echo "expected: $expected_rustc_commit" >&2
    echo "actual:   $actual_rustc_commit" >&2
    exit 1
fi

expected_rustfilt_version='rust_demangle 0.2.1'
actual_rustfilt_version=$(rustfilt --version)
if [[ "$actual_rustfilt_version" != "$expected_rustfilt_version" ]]; then
    echo "error: assembly generation requires $expected_rustfilt_version" >&2
    echo "actual: $actual_rustfilt_version" >&2
    exit 1
fi

unset RUSTFLAGS CARGO_ENCODED_RUSTFLAGS
mkdir -p asm
{
    rustc -V
    rustc -Vv | sed -n '/^commit-hash:/p; /^LLVM version:/p'
    rustfilt --version
    echo 'cargo-profile=release (-Os, codegen-units=1)'
} > asm/TOOLCHAIN.txt

if ((${#target_triples[@]} == 0)); then
    host_triple=$(rustc -vV | sed -n 's/^host: //p')
    target_triples+=("$host_triple")
fi

implementations=(cfg_gates is_supported options fn traits try_as_dyn)
targets=(basic advanced faulty)
modes=(noinline inlined)
installed_targets=$(rustup target list --installed)

for target_triple in "${target_triples[@]}"; do
    if [[ ! "$target_triple" =~ ^[A-Za-z0-9_.-]+$ ]]; then
        echo "error: invalid target triple: $target_triple" >&2
        exit 2
    fi
    if ! grep -Fxq "$target_triple" <<<"$installed_targets"; then
        echo "error: Rust standard library for '$target_triple' is not installed" >&2
        echo "install it with: rustup target add '$target_triple'" >&2
        exit 1
    fi

    for mode in "${modes[@]}"; do
        output_dir="asm/$mode/$target_triple"
        mkdir -p "$output_dir"

        for target_name in "${targets[@]}"; do
            for implementation in "${implementations[@]}"; do
                features="target_${target_name} using_${implementation} always_inline"
                if [[ "$mode" == noinline ]]; then
                    features+=" interpretable_asm"
                fi

                deps_dir="target/$target_triple/release/deps"
                rm -f "$deps_dir"/optional_trait_methods-*.s
                CARGO_INCREMENTAL=0 cargo rustc --locked --lib --release \
                    --target "$target_triple" \
                    --no-default-features \
                    --features "$features" \
                    -- --emit asm

                assembly_count=$(find "$deps_dir" -maxdepth 1 -type f \
                    -name 'optional_trait_methods-*.s' -print | wc -l | tr -d ' ')
                if [[ "$assembly_count" != 1 ]]; then
                    echo "error: expected one assembly file in $deps_dir; found $assembly_count" >&2
                    exit 1
                fi
                assembly_file=$(find "$deps_dir" -maxdepth 1 -type f \
                    -name 'optional_trait_methods-*.s' -print -quit)

                destination="$output_dir/${target_name}_${implementation}.s"
                temporary="$destination.tmp"
                rustfilt < "$assembly_file" > "$temporary"
                mv "$temporary" "$destination"
            done
        done

        if [[ "$skip_stats" == false ]]; then
            python3 asm_stats.py --mode "$mode" --target-triple "$target_triple" --strict
        fi
    done
done
