pub trait Target {
    type Error;

    fn base(&mut self) -> &'static TargetBaseOps<Self>;

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> {
        None
    }

    #[inline(always)]
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

pub struct TargetExtMulOps<T: Target + ?Sized> {
    pub mul: fn(&mut T, n: isize) -> Result<(), T::Error>,
}
