pub trait Target {
    type Error;

    fn base(&mut self) -> TargetBaseOps<'_, Self>;

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        None
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<'_, Self>> {
        None
    }
}

pub trait TargetBase: Target {
    fn get_state(&self) -> isize;
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error>;
}

pub trait TargetExtIncDec: Target {
    fn inc(&mut self) -> Result<(), Self::Error>;
    fn dec(&mut self) -> Result<(), Self::Error>;
}

pub trait TargetExtMul: Target {
    fn mul(&mut self, n: isize) -> Result<(), Self::Error>;

    #[inline(always)]
    fn ext_scale_factor(&mut self) -> Option<TargetExtScaleFactorOps<'_, Self>> {
        None
    }
}

pub trait TargetExtScaleFactor: Target {
    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error>;
}

macro_rules! define_ops {
    ($exttrait:ident -> $extname:ident) => {
        #[allow(missing_docs)]
        pub type $extname<'a, T> = &'a mut dyn $exttrait<Error = <T as Target>::Error>;
    };
}

define_ops!(TargetBase -> TargetBaseOps);
define_ops!(TargetExtIncDec -> TargetExtIncDecOps);
define_ops!(TargetExtMul -> TargetExtMulOps);
define_ops!(TargetExtScaleFactor -> TargetExtScaleFactorOps);
