#[derive(Clone, Copy)]
#[allow(dead_code)] // Some target feature selections do not implement this handler.
pub struct MulArgs {
    pub n: isize,
}

#[derive(Clone, Copy)]
#[allow(dead_code)] // Some target feature selections do not implement this handler.
pub struct ScaleFactorArgs {
    pub factor: isize,
}

pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    /// Passing `None` probes whether the handler is implemented without
    /// performing the operation. Passing `Some(())` invokes it.
    #[cfg_attr(feature = "always_inline", inline(always))]
    fn inc(&mut self, _args: Option<()>) -> Option<Result<(), Self::Error>> {
        None
    }

    /// Passing `None` probes whether the handler is implemented without
    /// performing the operation. Passing `Some(())` invokes it.
    #[cfg_attr(feature = "always_inline", inline(always))]
    fn dec(&mut self, _args: Option<()>) -> Option<Result<(), Self::Error>> {
        None
    }

    /// Passing `None` probes whether the handler is implemented without
    /// performing the operation. Passing `Some(args)` invokes it.
    #[cfg_attr(feature = "always_inline", inline(always))]
    fn mul(&mut self, _args: Option<MulArgs>) -> Option<Result<(), Self::Error>> {
        None
    }

    /// Passing `None` probes whether the handler is implemented without
    /// performing the operation. Passing `Some(args)` invokes it.
    #[cfg_attr(feature = "always_inline", inline(always))]
    fn scale_factor(&mut self, _args: Option<ScaleFactorArgs>) -> Option<Result<(), Self::Error>> {
        None
    }
}
