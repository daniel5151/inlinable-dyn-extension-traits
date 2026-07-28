use std::hint::black_box;

use optional_trait_methods::run_erased_selection_case;
use optional_trait_methods::run_runtime_toggle_case;
use optional_trait_methods::run_static_advanced_case;
use optional_trait_methods::run_static_basic_case;

fn usage() -> ! {
    eprintln!(
        "usage: idet-cases-bench \
<static-basic|runtime-disabled|erased-basic|static-advanced|runtime-enabled|erased-advanced|runtime-alternating|erased-alternating> \
<iterations>"
    );
    std::process::exit(2);
}

fn iterations() -> (String, usize) {
    let mut args = std::env::args().skip(1);
    let mode = args.next().unwrap_or_else(|| usage());
    let iterations = args
        .next()
        .and_then(|arg| arg.parse::<usize>().ok())
        .filter(|iterations| *iterations > 0)
        .unwrap_or_else(|| usage());
    if args.next().is_some() {
        usage();
    }
    (mode, iterations)
}

fn command(index: usize) -> &'static [u8] {
    const COMMANDS: [&[u8]; 3] = [b"+", b"-", b"+-"];
    black_box(COMMANDS[index % COMMANDS.len()])
}

fn run_static_basic(iterations: usize) -> isize {
    (0..iterations).fold(0isize, |checksum, index| {
        checksum.wrapping_add(black_box(run_static_basic_case(command(index))))
    })
}

fn run_static_advanced(iterations: usize) -> isize {
    (0..iterations).fold(0isize, |checksum, index| {
        checksum.wrapping_add(black_box(run_static_advanced_case(command(index))))
    })
}

fn run_runtime(iterations: usize, enabled: impl Fn(usize) -> bool) -> isize {
    (0..iterations).fold(0isize, |checksum, index| {
        checksum.wrapping_add(black_box(run_runtime_toggle_case(
            black_box(enabled(index)),
            command(index),
        )))
    })
}

fn run_erased(iterations: usize, advanced: impl Fn(usize) -> bool) -> isize {
    (0..iterations).fold(0isize, |checksum, index| {
        checksum.wrapping_add(black_box(run_erased_selection_case(
            black_box(advanced(index)),
            command(index),
        )))
    })
}

fn main() {
    let (mode, iterations) = iterations();
    let checksum = match mode.as_str() {
        "static-basic" => run_static_basic(iterations),
        "runtime-disabled" => run_runtime(iterations, |_| false),
        "erased-basic" => run_erased(iterations, |_| false),
        "static-advanced" => run_static_advanced(iterations),
        "runtime-enabled" => run_runtime(iterations, |_| true),
        "erased-advanced" => run_erased(iterations, |_| true),
        "runtime-alternating" => run_runtime(iterations, |index| index & 1 != 0),
        "erased-alternating" => run_erased(iterations, |index| index & 1 != 0),
        _ => usage(),
    };
    black_box(checksum);
}
