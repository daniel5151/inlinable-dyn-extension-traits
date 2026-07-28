core::cfg_select! {
    feature = "target_basic" => {
        mod basic;
        pub use basic::BasicTarget;
    }
    feature = "target_advanced" => {
        mod advanced;
        pub use advanced::AdvancedTarget;
    }
    feature = "target_faulty" => {
        mod faulty;
        pub use faulty::FaultyTarget;
    }
    _ => {
        compile_error!("must select one of the `target_` features!");
    }
}
