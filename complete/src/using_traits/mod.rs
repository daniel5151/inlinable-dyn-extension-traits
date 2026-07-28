#![allow(dead_code)]

#[cfg(any(test, feature = "traits_codegen_cases"))]
mod codegen_cases;
#[cfg(feature = "traits_codegen_cases")]
pub use codegen_cases::run_erased_selection_case;
#[cfg(feature = "traits_codegen_cases")]
pub use codegen_cases::run_runtime_toggle_case;
#[cfg(feature = "traits_codegen_cases")]
pub use codegen_cases::run_static_advanced_case;
#[cfg(feature = "traits_codegen_cases")]
pub use codegen_cases::run_static_basic_case;
pub mod controller;
pub mod target;
pub mod targets;
