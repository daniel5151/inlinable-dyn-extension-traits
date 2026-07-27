use std::env;

fn main() {
    // Register custom cfg names for rustc check-cfg
    println!("cargo:rustc-check-cfg=cfg(ext_incdec, ext_mul, cmd_incdec, cmd_mul)");

    let has_target_advanced = env::var_os("CARGO_FEATURE_TARGET_ADVANCED").is_some();
    let has_target_faulty = env::var_os("CARGO_FEATURE_TARGET_FAULTY").is_some();
    let using_cfg_gates = env::var_os("CARGO_FEATURE_USING_CFG_GATES").is_some();

    // Target extension support flags (pre-computed any(...) directives)
    let ext_incdec = has_target_advanced || has_target_faulty;
    let ext_mul = has_target_advanced;

    if ext_incdec {
        println!("cargo:rustc-cfg=ext_incdec");
    }
    if ext_mul {
        println!("cargo:rustc-cfg=ext_mul");
    }

    // Command packet support flags: active if using_cfg_gates is NOT set, or if target supports the extension
    if !using_cfg_gates || ext_incdec {
        println!("cargo:rustc-cfg=cmd_incdec");
    }
    if !using_cfg_gates || ext_mul {
        println!("cargo:rustc-cfg=cmd_mul");
    }
}
