pub use super::opt_result::MaybeUnimpl;
pub use super::opt_result::OptResult;

pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    /// (feat: incdec)
    fn inc(&mut self) -> OptResult<(), Self::Error> {
        Err(MaybeUnimpl::unimplemented())
    }

    /// (feat: incdec)
    fn dec(&mut self) -> OptResult<(), Self::Error> {
        Err(MaybeUnimpl::unimplemented())
    }

    /// (feat: mul)
    fn mul(&mut self, n: isize) -> OptResult<(), Self::Error> {
        let _ = n;
        Err(MaybeUnimpl::unimplemented())
    }

    /// (feat: scale_factor)
    fn scale_factor(&mut self, factor: isize) -> OptResult<(), Self::Error> {
        let _ = factor;
        Err(MaybeUnimpl::unimplemented())
    }
}
