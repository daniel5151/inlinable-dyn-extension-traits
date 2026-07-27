use rand_chacha::ChaCha8Rng;
use rand_core::RngCore;
use rand_core::SeedableRng;
use std::io::Write;
use std::io::{self};

fn main() {
    let num_commands = std::env::args()
        .nth(1)
        .and_then(|arg| arg.parse::<usize>().ok())
        .unwrap_or(100);

    let mut rng = ChaCha8Rng::from_entropy();
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
                let mut val = (rng.next_u32() % 10) as isize;
                if val == 7 {
                    val = 8;
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
