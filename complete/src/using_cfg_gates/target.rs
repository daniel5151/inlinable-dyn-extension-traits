pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    #[cfg(ext_incdec)]
    fn inc(&mut self) -> Result<(), Self::Error>;

    #[cfg(ext_incdec)]
    fn dec(&mut self) -> Result<(), Self::Error>;

    #[cfg(ext_mul)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;

    #[cfg(ext_mul_scale_factor)]
    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error>;
}
