pub trait Target {
    type Error;

    fn base(&mut self) -> TargetBaseOps<'_, Self>;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        None
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
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

    #[cfg_attr(feature = "always_inline", inline(always))]
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

// Preserve IDET behavior when the controller's static target type is an
// erased reference. The returned extension trait objects already encode the
// relevant associated type, so forwarding does not require re-wrapping them.
impl<'a, 'obj, E> Target for &'a mut (dyn Target<Error = E> + 'obj) {
    type Error = E;

    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        (**self).base()
    }

    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        (**self).ext_incdec()
    }

    fn ext_mul(&mut self) -> Option<TargetExtMulOps<'_, Self>> {
        (**self).ext_mul()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    struct RuntimeTarget {
        state: isize,
        incdec_enabled: bool,
    }

    impl Target for RuntimeTarget {
        type Error = ();

        fn base(&mut self) -> TargetBaseOps<'_, Self> {
            self
        }

        fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
            self.incdec_enabled.then_some(self)
        }
    }

    impl TargetBase for RuntimeTarget {
        fn get_state(&self) -> isize {
            self.state
        }

        fn set_state(&mut self, value: isize) -> Result<(), Self::Error> {
            self.state = value;
            Ok(())
        }
    }

    impl TargetExtIncDec for RuntimeTarget {
        fn inc(&mut self) -> Result<(), Self::Error> {
            self.state += 1;
            Ok(())
        }

        fn dec(&mut self) -> Result<(), Self::Error> {
            self.state -= 1;
            Ok(())
        }
    }

    fn query_through_erased_target(target: &mut dyn Target<Error = ()>) -> bool {
        assert_eq!(target.base().get_state(), 0);
        target.ext_incdec().is_some()
    }

    #[test]
    fn runtime_capability_query_works_through_dyn_target() {
        let mut target = RuntimeTarget {
            state: 0,
            incdec_enabled: false,
        };
        assert!(!query_through_erased_target(&mut target));

        target.incdec_enabled = true;
        assert!(query_through_erased_target(&mut target));
    }
}
