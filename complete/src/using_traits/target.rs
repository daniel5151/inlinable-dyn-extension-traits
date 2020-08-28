pub trait Target {
    type Error;

    fn base(&mut self) -> TargetBaseOps<Self>;

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
        None
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<Self>> {
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
