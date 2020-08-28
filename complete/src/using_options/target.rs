pub use super::opt_result::{MaybeUnimpl, OptResult};

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
}
