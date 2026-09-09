use core::num::Wrapping;

use super::super::target::Target;
use super::super::target::TargetBase;
use super::super::target::TargetBaseOps;
use super::super::target::TargetExtMul;
use super::super::target::TargetExtMulOps;

pub struct MulOnlyTarget {
    state: Wrapping<isize>,
}

impl MulOnlyTarget {
    pub fn new(state: isize) -> MulOnlyTarget {
        MulOnlyTarget {
            state: Wrapping(state),
        }
    }
}

impl Target for MulOnlyTarget {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<'_, Self>> {
        Some(self)
    }
}

impl TargetBase for MulOnlyTarget {
    #[inline(never)]
    fn get_state(&self) -> isize {
        self.state.0
    }

    #[inline(never)]
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = Wrapping(n);
        Ok(())
    }
}

impl TargetExtMul for MulOnlyTarget {
    #[inline(never)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> {
        match n {
            7 => Err("multiplying by 7 is unlucky!"),
            _ => {
                self.state *= Wrapping(n);
                Ok(())
            }
        }
    }
}
