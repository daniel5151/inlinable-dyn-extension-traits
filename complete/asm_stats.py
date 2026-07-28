#!/usr/bin/env python3
"""Summarize target-specific Rust assembly listings.

The parser deliberately accepts the ELF and Mach-O label conventions exercised
by the checked-in targets.
It counts textual instructions, not encoded bytes or execution cost. The metric is
useful for checking dead-code elimination within one pinned toolchain/target, but
must not be interpreted as a portable performance measurement.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

IMPLEMENTATIONS = (
    "cfg_gates",
    "is_supported",
    "options",
    "fn",
    "traits",
    "try_as_dyn",
)
TARGETS = ("basic", "advanced", "faulty")
PRIORITY = (
    "parse_command",
    "handle",
    "run_optional_trait_methods",
    "unsupported_cmd",
    "parse_isize",
    "get_state",
    "set_state",
    "inc",
    "dec",
    "mul",
    "scale_factor",
    "strip_prefix",
)
LOCAL_LABEL_PREFIXES = (
    ".",
    "$",
    "LBB",
    "Ltmp",
    "Lloh",
    "Lfunc",
    "Lexception",
    "LJTI",
    "Lswitch",
    "GCC_except",
    "l_anon",
)


def is_global_label(line: str) -> bool:
    if not line.endswith(":\n") or line[:1].isspace():
        return False
    label = line.strip()[:-1]
    return bool(label) and not label.startswith(LOCAL_LABEL_PREFIXES)


def is_instruction(line: str) -> bool:
    if not line[:1].isspace():
        return False
    stripped = line.strip()
    return bool(stripped) and not stripped.startswith((".", "#", "//", ";", "@"))


def short_name(label: str) -> str:
    if "::strip_prefix::" in label:
        return "strip_prefix"
    for name in PRIORITY:
        if re.search(rf"(?:::|\.){re.escape(name)}(?:$|<)", label) or label.rstrip(
            ":"
        ).endswith(name):
            return name
    cleaned = label.lstrip("_")
    return cleaned.rsplit("::", 1)[-1]


def parse_asm_file(path: Path) -> dict:
    functions: list[dict] = []
    current_label: str | None = None
    instructions = 0
    source_lines = 0

    def finish_function() -> None:
        nonlocal current_label, instructions, source_lines
        if current_label is not None:
            functions.append(
                {
                    "label": current_label,
                    "name": short_name(current_label),
                    "instructions": instructions,
                    "source_lines": source_lines,
                }
            )
        current_label = None
        instructions = 0
        source_lines = 0

    with path.open("r", encoding="utf-8", errors="replace") as assembly:
        for line in assembly:
            if is_global_label(line):
                finish_function()
                current_label = line.strip()[:-1]
                continue
            if current_label is not None and is_instruction(line):
                instructions += 1
                source_lines += 1
            elif current_label is not None and line.strip():
                source_lines += 1
    finish_function()

    grouped: defaultdict[str, dict[str, int]] = defaultdict(
        lambda: {"instructions": 0, "source_lines": 0}
    )
    for function in functions:
        grouped[function["name"]]["instructions"] += function["instructions"]
        grouped[function["name"]]["source_lines"] += function["source_lines"]

    return {
        "functions": functions,
        "grouped": dict(grouped),
        "total_instructions": sum(item["instructions"] for item in functions),
        "total_source_lines": sum(item["source_lines"] for item in functions),
    }


def discover_triples(root: Path, mode: str) -> list[str]:
    mode_dir = root / mode
    if not mode_dir.is_dir():
        return []
    return sorted(path.name for path in mode_dir.iterdir() if path.is_dir())


def print_table(triple: str, target: str, data: dict, metric: str) -> None:
    print(f"Target triple: {triple} | target: {target} | metric: {metric}")
    header = f"{'Function':<30}" + "".join(
        f" | {implementation:<14}" for implementation in IMPLEMENTATIONS
    )
    print(header)
    print("-" * len(header))

    names = set()
    for result in data.values():
        names.update(result["grouped"])
    ordered_names = sorted(
        names, key=lambda name: (PRIORITY.index(name) if name in PRIORITY else 999, name)
    )

    for name in ordered_names:
        values = []
        for implementation in IMPLEMENTATIONS:
            value = data[implementation]["grouped"].get(name, {}).get(metric)
            values.append(f" | {str(value) if value is not None else '-':>14}")
        print(f"{name:<30}{''.join(values)}")

    total_key = "total_instructions" if metric == "instructions" else "total_source_lines"
    totals = "".join(
        f" | {data[implementation][total_key]:>14}" for implementation in IMPLEMENTATIONS
    )
    print("-" * len(header))
    print(f"{'TOTAL (recognized functions)':<30}{totals}")
    print()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=Path("asm"))
    parser.add_argument("--mode", choices=("inlined", "noinline"), default="noinline")
    parser.add_argument("--target-triple", action="append", dest="triples")
    parser.add_argument("--target", choices=TARGETS, action="append", dest="targets")
    parser.add_argument("--metric", choices=("instructions", "source_lines"), default="instructions")
    parser.add_argument("--json", type=Path, dest="json_path")
    parser.add_argument(
        "--strict",
        action="store_true",
        help="fail on missing files, zero recognized instructions, or missing key symbols",
    )
    args = parser.parse_args()

    triples = args.triples or discover_triples(args.root, args.mode)
    targets = args.targets or list(TARGETS)
    if not triples:
        print(f"no target triples found under {args.root / args.mode}", file=sys.stderr)
        return 2

    report: dict[str, dict] = {}
    errors: list[str] = []
    for triple in triples:
        report[triple] = {}
        for target in targets:
            by_implementation = {}
            for implementation in IMPLEMENTATIONS:
                path = (
                    args.root
                    / args.mode
                    / triple
                    / f"{target}_{implementation}.s"
                )
                if not path.is_file():
                    errors.append(f"missing assembly file: {path}")
                    continue
                result = parse_asm_file(path)
                by_implementation[implementation] = result
                if result["total_instructions"] == 0:
                    errors.append(f"no instructions recognized in: {path}")
                required = {"run_optional_trait_methods"}
                if args.mode == "noinline":
                    required.update(("parse_command", "handle"))
                missing = required.difference(result["grouped"])
                if missing:
                    errors.append(f"missing {sorted(missing)} in: {path}")

            if len(by_implementation) == len(IMPLEMENTATIONS):
                report[triple][target] = by_implementation
                print_table(triple, target, by_implementation, args.metric)

    if args.json_path:
        args.json_path.parent.mkdir(parents=True, exist_ok=True)
        args.json_path.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")

    if errors:
        for error in errors:
            print(f"error: {error}", file=sys.stderr)
        if args.strict:
            return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
