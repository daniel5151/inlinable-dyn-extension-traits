cfg_if::cfg_if! {
    if #[cfg(feature = "target_basic")] {
        mod basic;
        pub use self::basic::BasicTarget;
    } else if #[cfg(feature = "target_advanced")] {
        mod advanced;
        pub use self::advanced::AdvancedTarget;
    } else if #[cfg(feature = "target_faulty")] {
        mod faulty;
        pub use self::faulty::FaultyTarget;
    } else {
        compile_error!("must select one of the `target_` features!");
    }
}
