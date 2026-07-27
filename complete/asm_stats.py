#!/usr/bin/env python3
"""
asm_stats.py - Analyze assembly function sizes across optional trait method implementations.
"""

import argparse
import glob
import os
import sys

def parse_asm_file(filepath):
    """
    Parses a demangled .s assembly file and extracts metrics for each function symbol.
    Returns dict: { fn_short_name: { 'instructions': int, 'total_lines': int, 'full_name': str } }
    """
    functions = {}
    current_symbol = None
    current_full_name = None
    instr_count = 0
    line_count = 0

    with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
        for line in f:
            raw_line = line.strip()

            # Check for start of a function label
            # Match lines like: <optional_trait_methods::using_fn::...>::parse_command: or main:
            if line.endswith(':\n') and not line.startswith('.') and not line.startswith('#'):
                label = raw_line[:-1]
                # Extract short symbol name
                if '::' in label:
                    short_name = label.rsplit('::', 1)[-1]
                    if '>' in short_name:
                        short_name = short_name.split('>')[-1].strip(':').strip()
                    if short_name.startswith('parse_command'):
                        short_name = 'parse_command'
                    elif short_name.startswith('handle'):
                        short_name = 'handle'
                    elif short_name.startswith('unsupported_cmd'):
                        short_name = 'unsupported_cmd'
                else:
                    short_name = label

                current_symbol = short_name
                current_full_name = label
                instr_count = 0
                line_count = 0
                continue

            # Check for end of function marker (.Lfunc_endN:)
            if raw_line.startswith('.Lfunc_end'):
                if current_symbol:
                    functions[current_symbol] = {
                        'instructions': instr_count,
                        'total_lines': line_count,
                        'full_name': current_full_name,
                    }
                    current_symbol = None
                continue

            if current_symbol:
                if not raw_line or raw_line.startswith('#'):
                    continue
                line_count += 1
                # Assembly instruction lines start with tab in rustc asm output
                if line.startswith('\t') and not raw_line.startswith('.'):
                    instr_count += 1

    return functions

def main():
    parser = argparse.ArgumentParser(description="Assembly function size & insight analyzer")
    parser.add_argument("--dir", default="asm_output", help="Directory containing .s files (default: asm_output)")
    parser.add_argument("-t", "--target", choices=["basic", "advanced", "faulty"], help="Filter by target")
    parser.add_argument("-f", "--func", help="Filter by function name substring (e.g. parse_command, handle)")
    parser.add_argument("--lines", action="store_true", help="Report total ASM lines instead of instruction counts")
    args = parser.parse_args()

    asm_dir = args.dir
    if not os.path.exists(asm_dir):
        if os.path.exists(os.path.join("complete", asm_dir)):
            asm_dir = os.path.join("complete", asm_dir)
        else:
            print(f"Error: Directory '{asm_dir}' not found.", file=sys.stderr)
            sys.exit(1)

    targets = ["basic", "advanced", "faulty"] if not args.target else [args.target]
    impls = ["options", "fn", "traits"]
    metric_key = "total_lines" if args.lines else "instructions"
    metric_name = "ASM Lines" if args.lines else "Instructions"

    print(f"=== Assembly Function Size Insights ({metric_name}) ===")
    print()

    for tgt in targets:
        print(f"--- Target: {tgt.upper()} ---")
        data = {}
        all_funcs = set()
        total_file_instructions = {}

        for impl in impls:
            filepath = os.path.join(asm_dir, f"{tgt}_{impl}.s")
            data[impl] = {}
            if os.path.exists(filepath):
                fns = parse_asm_file(filepath)
                tot = 0
                for fname, metrics in fns.items():
                    if args.func and args.func.lower() not in fname.lower():
                        continue
                    data[impl][fname] = metrics[metric_key]
                    all_funcs.add(fname)
                    tot += metrics[metric_key]
                total_file_instructions[impl] = tot
            else:
                total_file_instructions[impl] = 0

        priority = ["parse_command", "handle", "main", "unsupported_cmd", "parse_isize", "get_state", "set_state", "inc", "dec", "mul", "scale_factor"]
        sorted_funcs = sorted(all_funcs, key=lambda x: (priority.index(x) if x in priority else 99, x))

        header = f"{'Function':<22} | {'using_options':<15} | {'using_fn':<15} | {'using_traits':<15}"
        divider = "-" * len(header)
        print(header)
        print(divider)

        for fn in sorted_funcs:
            opts_val = data["options"].get(fn, "-")
            fn_val = data["fn"].get(fn, "-")
            traits_val = data["traits"].get(fn, "-")

            s_opts = f"{opts_val:>5}" if opts_val != "-" else f"{'-':>5}"
            s_fn = f"{fn_val:>5}" if fn_val != "-" else f"{'-':>5}"
            s_traits = f"{traits_val:>5}" if traits_val != "-" else f"{'-':>5}"

            print(f"{fn:<22} | {s_opts:<15} | {s_fn:<15} | {s_traits:<15}")

        print(divider)
        tot_opts = total_file_instructions.get("options", 0)
        tot_fn = total_file_instructions.get("fn", 0)
        tot_traits = total_file_instructions.get("traits", 0)
        print(f"{'TOTAL (measured)':<22} | {tot_opts:>5}           | {tot_fn:>5}           | {tot_traits:>5}")
        print()

if __name__ == "__main__":
    main()
