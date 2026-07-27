#![cfg_attr(not(test), no_std)]
#![cfg_attr(not(test), no_main)]

extern crate libc;

#[cfg(not(test))] // make rust-analyzer happy
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    unsafe {
        let msg = b"panic!\n";
        libc::write(2, msg.as_ptr() as *const _, msg.len());
        libc::abort();
    }
}

#[cfg(not(test))]
#[unsafe(no_mangle)]
pub extern "C" fn rust_eh_personality() {}

mod commands;
mod line_reader;
mod print_macros;

pub use line_reader::LineReader;

core::cfg_select! {
    feature = "using_cfg_gates" => {
        mod using_cfg_gates;
        use using_cfg_gates::*;
    }
    feature = "using_is_supported" => {
        mod using_is_supported;
        use using_is_supported::*;
    }
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

use controller::Error;
use controller::TargetController;

#[cfg(not(test))]
#[unsafe(no_mangle)]
pub extern "C" fn main(_argc: isize, _argv: *const *const u8) -> isize {
    let target = core::cfg_select! {
        feature = "target_basic" => targets::BasicTarget::new(0),
        feature = "target_advanced" => targets::AdvancedTarget::new(0),
        feature = "target_faulty" => targets::FaultyTarget::new(0),
        _ => compile_error!("must select one of the `target_` features!"),
    };

    let mut controller = TargetController::new(target);

    let mut reader = LineReader::new();
    let mut line_buf = [0u8; 128];
    while let Some(line) = reader.read_line(&mut line_buf) {
        if line.is_empty() {
            continue;
        }
        let res = match controller.parse_command(line) {
            Some(cmd) => controller.handle(&cmd),
            None => controller.unsupported_cmd(),
        };

        if let Err(e) = res {
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
            break;
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
