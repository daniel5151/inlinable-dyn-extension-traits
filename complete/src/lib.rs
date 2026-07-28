#![cfg_attr(not(test), no_std)]
#![cfg_attr(feature = "using_try_as_dyn", feature(try_as_dyn))]

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
    feature = "using_try_as_dyn" => {
        mod using_try_as_dyn;
        use using_try_as_dyn::*;
    }
    _ => {
        compile_error!("select exactly one `using_*` feature");
    }
}

#[cfg(all(feature = "using_traits", feature = "traits_codegen_cases"))]
pub use using_traits::run_erased_selection_case;
#[cfg(all(feature = "using_traits", feature = "traits_codegen_cases"))]
pub use using_traits::run_runtime_toggle_case;
#[cfg(all(feature = "using_traits", feature = "traits_codegen_cases"))]
pub use using_traits::run_static_advanced_case;
#[cfg(all(feature = "using_traits", feature = "traits_codegen_cases"))]
pub use using_traits::run_static_basic_case;

use controller::Error;
use controller::TargetController;

/// Run the selected target/controller pair over commands read from standard
/// input.
///
/// Returns zero on clean EOF and a non-zero status after a target error.
#[unsafe(no_mangle)]
pub extern "C" fn run_optional_trait_methods() -> libc::c_int {
    let target = core::cfg_select! {
        feature = "target_basic" => targets::BasicTarget::new(0),
        feature = "target_advanced" => targets::AdvancedTarget::new(0),
        feature = "target_faulty" => targets::FaultyTarget::new(0),
        _ => compile_error!("select exactly one `target_*` feature"),
    };

    let mut controller = TargetController::new(target);
    let mut reader = LineReader::new();
    let mut line_buf = [0u8; 128];

    while let Some(line) = reader.read_line(&mut line_buf) {
        if line.is_empty() {
            continue;
        }

        let result = match controller.parse_command(line) {
            Some(command) => controller.handle(&command),
            None => controller.unsupported_cmd(),
        };

        if let Err(error) = result {
            core::cfg_select! {
                feature = "using_options" => {
                    match error {
                        Error::Target(error) => crate::println_str!(error),
                        Error::InvalidImpl => crate::println_str!("Invalid implementation!"),
                    }
                }
                _ => {
                    match error {
                        Error::Target(error) => crate::println_str!(error),
                    }
                }
            }
            return 1;
        }
    }

    0
}

#[cfg(feature = "dce_markers")]
#[macro_export]
macro_rules! __dead_code_marker {
    ($marker:literal) => {{
        core::hint::black_box($marker);
    }};
}

#[cfg(not(feature = "dce_markers"))]
#[macro_export]
macro_rules! __dead_code_marker {
    ($marker:literal) => {{}};
}
