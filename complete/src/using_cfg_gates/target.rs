pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    #[cfg(any(feature = "target_advanced", feature = "target_faulty"))]
    fn inc(&mut self) -> Result<(), Self::Error>;

    #[cfg(any(feature = "target_advanced", feature = "target_faulty"))]
    fn dec(&mut self) -> Result<(), Self::Error>;

    #[cfg(feature = "target_advanced")]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;

    #[cfg(feature = "target_advanced")]
    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error>;
}
