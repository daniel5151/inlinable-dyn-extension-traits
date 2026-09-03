use std::env;

fn feature_enabled(name: &str) -> bool {
    env::var_os(name).is_some()
}

fn require_exactly_one(group: &str, features: &[bool]) {
    assert_eq!(
        features.iter().filter(|enabled| **enabled).count(),
        1,
        "select exactly one `{group}` feature"
    );
}

fn main() {
    // Register custom cfg names for rustc check-cfg
    println!("cargo:rustc-check-cfg=cfg(ext_incdec, ext_mul, ext_mul_scale_factor)");
    println!("cargo:rustc-check-cfg=cfg(cmd_incdec, cmd_mul, cmd_mul_scale_factor)");

    let has_target_basic = feature_enabled("CARGO_FEATURE_TARGET_BASIC");
    let has_target_advanced = feature_enabled("CARGO_FEATURE_TARGET_ADVANCED");
    let has_target_faulty = feature_enabled("CARGO_FEATURE_TARGET_FAULTY");

    let using_cfg_gates = feature_enabled("CARGO_FEATURE_USING_CFG_GATES");
    let using_is_supported = feature_enabled("CARGO_FEATURE_USING_IS_SUPPORTED");
    let using_opt_result = feature_enabled("CARGO_FEATURE_USING_OPT_RESULT");
    let using_fn = feature_enabled("CARGO_FEATURE_USING_FN");
    let using_traits = feature_enabled("CARGO_FEATURE_USING_TRAITS");
    let using_try_as_dyn = feature_enabled("CARGO_FEATURE_USING_TRY_AS_DYN");

    require_exactly_one(
        "target_*",
        &[has_target_basic, has_target_advanced, has_target_faulty],
    );
    require_exactly_one(
        "using_*",
        &[
            using_cfg_gates,
            using_is_supported,
            using_opt_result,
            using_fn,
            using_traits,
            using_try_as_dyn,
        ],
    );

    // Target extension support flags (pre-computed any(...) directives)
    let ext_incdec = has_target_advanced || has_target_faulty;
    let ext_mul = has_target_advanced;
    let ext_mul_scale_factor = has_target_advanced;
    assert!(
        !ext_mul_scale_factor || ext_mul,
        "the nested MulScaleFactor extension requires Mul"
    );

    if ext_incdec {
        println!("cargo:rustc-cfg=ext_incdec");
    }
    if ext_mul {
        println!("cargo:rustc-cfg=ext_mul");
    }
    if ext_mul_scale_factor {
        println!("cargo:rustc-cfg=ext_mul_scale_factor");
    }

    // Command packet support flags: active if using_cfg_gates is NOT set, or if
    // target supports the extension
    if !using_cfg_gates || ext_incdec {
        println!("cargo:rustc-cfg=cmd_incdec");
    }
    if !using_cfg_gates || ext_mul {
        println!("cargo:rustc-cfg=cmd_mul");
    }
    if !using_cfg_gates || ext_mul_scale_factor {
        println!("cargo:rustc-cfg=cmd_mul_scale_factor");
    }
}
