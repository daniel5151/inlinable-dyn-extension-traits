core::cfg_select! {
    feature = "target_basic" => {
        mod basic;
        pub use self::basic::BasicTarget;
    }
    feature = "target_advanced" => {
        mod advanced;
        pub use self::advanced::AdvancedTarget;
    }
    feature = "target_faulty" => {
        mod faulty;
        pub use self::faulty::FaultyTarget;
    }
    _ => {
        compile_error!("must select one of the `target_` features!");
    }
}
