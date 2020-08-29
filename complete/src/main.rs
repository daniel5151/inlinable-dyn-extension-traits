#![no_std]
#![no_main]

extern crate libc;

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

cfg_if::cfg_if! {
    if #[cfg(feature = "using_options")] {
        mod using_options;
        use using_options::*;
    } else if #[cfg(feature = "using_fn")] {
        mod using_fn;
        use using_fn::*;
    } else if #[cfg(feature = "using_traits")] {
        mod using_traits;
        use using_traits::*;
    } else {
        compile_error!("must select one of the `using_` features!");
    }
}

mod commands;
mod print_macros;

use commands::Command;
use controller::{Error, TargetController};

#[no_mangle]
pub extern "C" fn main(_argc: isize, _argv: *const *const u8) -> isize {
    cfg_if::cfg_if! {
        if #[cfg(feature = "target_basic")] {
            let target = targets::BasicTarget::new(0);
        } else if #[cfg(feature = "target_advanced")] {
            let target = targets::AdvancedTarget::new(0);
        } else if #[cfg(feature = "target_faulty")] {
            let target = targets::FaultyTarget::new(0);
        } else {
            compile_error!("must select one of the `target_` features!");
        }
    }

    let mut controller = TargetController::new(target);

    // for _ in 0..(1024 * 1024 * 128) {
    if let Err(e) = controller.run(&[
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
    ]) {
        cfg_if::cfg_if! {
            if #[cfg(feature = "using_options")] {
                match e {
                    Error::Target(e) => crate::println_str!(e),
                    Error::InvalidImpl => crate::println_str!("Invalid implementation!"),
                }
            } else {
                match e {
                    Error::Target(e) => crate::println_str!(e),
                }
            }
        }
    }
    // }

    0
}
