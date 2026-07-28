use rand_chacha::ChaCha8Rng;
use rand_core::RngCore;
use rand_core::SeedableRng;
use std::io::Write;
use std::io::{self};

fn usage() -> ! {
    eprintln!("usage: harness <positive-command-count> <seed-u64>");
    std::process::exit(2);
}

fn main() {
    let mut args = std::env::args().skip(1);
    let num_commands = args
        .next()
        .and_then(|arg| arg.parse::<usize>().ok())
        .filter(|count| *count > 0)
        .unwrap_or_else(|| usage());
    let seed = args
        .next()
        .and_then(|arg| arg.parse::<u64>().ok())
        .unwrap_or_else(|| usage());
    if args.next().is_some() {
        usage();
    }

    let mut rng = ChaCha8Rng::seed_from_u64(seed);
    let stdout = io::stdout();
    let mut handle = stdout.lock();

    for _ in 0..num_commands {
        let res = match rng.next_u32() % 7 {
            0 => writeln!(handle, "p"),
            1 => writeln!(handle, "s {}", (rng.next_u32() % 100) as isize),
            2 => writeln!(handle, "+"),
            3 => writeln!(handle, "-"),
            4 => writeln!(handle, "+-"),
            5 => {
                let mut val = (rng.next_u32() % 9) as isize;
                if val >= 7 {
                    val += 1;
                }
                writeln!(handle, "* {}", val)
            }
            _ => {
                let mut val = (rng.next_u32() % 5) as isize;
                if val == 0 {
                    val = 1;
                }
                writeln!(handle, "*~ {}", val)
            }
        };

        if matches!(res, Err(ref e) if e.kind() == io::ErrorKind::BrokenPipe) {
            break;
        }
    }
}
