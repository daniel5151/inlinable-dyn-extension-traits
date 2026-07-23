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
    let target = core::cfg_select! {
        feature = "target_basic" => targets::BasicTarget::new(0),
        feature = "target_advanced" => targets::AdvancedTarget::new(0),
        feature = "target_faulty" => targets::FaultyTarget::new(0),
        _ => compile_error!("must select one of the `target_` features!"),
    };

    let mut controller = TargetController::new(target);

    // for _ in 0..(1024 * 1024 * 128) {
    if let Err(e) = controller.run(core::hint::black_box(&[
        Command::PrintState,
        Command::SetState(2),
        Command::PrintState,
        Command::Inc,
        Command::Inc,
        Command::Inc,
        Command::PrintState,
        Command::IncDec, // <-- Faulty target will fail here
        Command::PrintState,
        Command::Dec,
        Command::PrintState,
        Command::Mul(2),
        Command::PrintState,
        Command::Mul(7), // <-- Advanced target doesn't like multiplying by 7
        Command::PrintState,
    ])) {
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
    // }

    0
}

#[macro_export]
macro_rules! __dead_code_marker {
    ($marker:literal) => {{
        core::hint::black_box($marker);
    }};
}
