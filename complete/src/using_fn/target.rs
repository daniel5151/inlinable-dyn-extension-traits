pub trait Target {
    type Error;

    fn base(&mut self) -> &'static TargetBaseOps<Self>;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> {
        None
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_mul(&mut self) -> Option<&'static TargetExtMulOps<Self>> {
        None
    }
}

pub struct TargetBaseOps<T: Target + ?Sized> {
    pub get_state: fn(&T) -> isize,
    pub set_state: fn(&mut T, n: isize) -> Result<(), T::Error>,
}

pub struct TargetExtIncDecOps<T: Target + ?Sized> {
    pub inc: fn(&mut T) -> Result<(), T::Error>,
    pub dec: fn(&mut T) -> Result<(), T::Error>,
}

pub struct TargetExtMulOps<T: Target + ?Sized + 'static> {
    pub mul: fn(&mut T, n: isize) -> Result<(), T::Error>,
    pub ext_scale_factor: fn(&T) -> Option<&'static TargetExtScaleFactorOps<T>>,
}

pub struct TargetExtScaleFactorOps<T: Target + ?Sized + 'static> {
    pub scale_factor: fn(&mut T, factor: isize) -> Result<(), T::Error>,
}
