#![cfg_attr(not(test), no_std)]
#![cfg_attr(not(test), no_main)]

extern crate libc;

#[cfg(not(test))] // make rust-analyzer happy
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

#[cfg(not(test))]
#[unsafe(no_mangle)]
pub extern "C" fn rust_eh_personality() {}

core::cfg_select! {
    feature = "using_options" => {
        mod using_options;
        use using_options::*;
    }
    feature = "using_fn" => {
        mod using_fn;
        use using_fn::*;
    }
    feature = "using_traits" => {
        mod using_traits;
        use using_traits::*;
    }
    _ => {
        compile_error!("must select one of the `using_` features!");
    }
}

mod commands;
mod print_macros;

use commands::Command;
use controller::{Error, TargetController};

#[unsafe(no_mangle)]
pub extern "C" fn main(_argc: isize, _argv: *const *const u8) -> isize {
    use rand_chacha::ChaCha8Rng;
    use rand_core::{RngCore, SeedableRng};

    let target = core::cfg_select! {
        feature = "target_basic" => targets::BasicTarget::new(0),
        feature = "target_advanced" => targets::AdvancedTarget::new(0),
        feature = "target_faulty" => targets::FaultyTarget::new(0),
        _ => compile_error!("must select one of the `target_` features!"),
    };

    let mut controller = TargetController::new(target);

    // Read the BENCH_ITERATIONS environment variable at compile time.
    // If not set or invalid, defaults to 1.
    let iterations = match option_env!("BENCH_ITERATIONS") {
        Some(val) => val.parse::<usize>().unwrap_or(1).max(1),
        None => 1,
    };

    // Generate randomized commands ahead of time (outside the hot loop)
    // We use SeedableRng::from_entropy() to securely source a random seed from
    // the OS at runtime
    let mut commands_pool = [Command::PrintState; 8192];
    let mut rng = ChaCha8Rng::from_entropy();

    for cmd in commands_pool.iter_mut() {
        *cmd = match rng.next_u32() % 6 {
            0 => Command::PrintState,
            1 => Command::SetState((rng.next_u32() % 100) as isize),
            2 => Command::Inc,
            3 => Command::Dec,
            4 => Command::IncDec,
            _ => {
                let mut mul_val = (rng.next_u32() % 10) as isize;
                if mul_val == 7 {
                    mul_val = 8; // Avoid unlucky 7 for target_advanced to run cleanly
                }
                Command::Mul(mul_val)
            }
        };
    }

    for i in 0..iterations {
        // Calculate a shifting offset using coprime 17 to ensure each iteration
        // processes a different slice of randomized operations from the pool.
        let offset = (i * 17) % (8192 - 64);
        let slice = &commands_pool[offset..offset + 64];

        if let Err(e) = controller.run(core::hint::black_box(slice)) {
            core::cfg_select! {
                feature = "using_options" => {
                    match e {
                        Error::Target(e) => crate::println_str!(e),
                        Error::InvalidImpl => crate::println_str!("Invalid implementation!"),
                    }
                }
                _ => {
                    match e {
                        Error::Target(e) => crate::println_str!(e),
                    }
                }
            }
        }
    }

    0
}

#[macro_export]
macro_rules! __dead_code_marker {
    ($marker:literal) => {{
        core::hint::black_box($marker);
    }};
}
