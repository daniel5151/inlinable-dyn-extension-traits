pub trait Target {
    type Error;

    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;

    fn ext_incdec_supported(&self) -> bool {
        false
    }

    fn inc(&mut self) -> Result<(), Self::Error> {
        unimplemented!()
    }

    fn dec(&mut self) -> Result<(), Self::Error> {
        unimplemented!()
    }

    fn ext_mul_supported(&self) -> bool {
        false
    }

    fn mul(&mut self, n: isize) -> Result<(), Self::Error> {
        let _ = n;
        unimplemented!()
    }

    fn ext_scale_factor_supported(&self) -> bool {
        false
    }

    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error> {
        let _ = factor;
        unimplemented!()
    }
}
