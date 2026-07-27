use core::num::Wrapping;

use super::super::target::{
    Target, TargetBase, TargetBaseOps, TargetExtIncDec, TargetExtIncDecOps, TargetExtMul,
    TargetExtMulOps, TargetExtScaleFactor, TargetExtScaleFactorOps,
};

pub struct AdvancedTarget {
    state: Wrapping<isize>,
    scale: Wrapping<isize>,
}

impl AdvancedTarget {
    pub fn new(state: isize) -> AdvancedTarget {
        AdvancedTarget {
            state: Wrapping(state),
            scale: Wrapping(1),
        }
    }
}

impl Target for AdvancedTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        Some(self)
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<'_, Self>> {
        Some(self)
    }
}

impl TargetBase for AdvancedTarget {
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

impl TargetExtIncDec for AdvancedTarget {
    #[inline(never)]
    fn inc(&mut self) -> Result<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    #[inline(never)]
    fn dec(&mut self) -> Result<(), Self::Error> {
        self.state -= 1;
        Ok(())
    }
}

impl TargetExtMul for AdvancedTarget {
    #[inline(never)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> {
        match n {
            7 => Err("multiplying by 7 is unlucky!"),
            _ => {
                self.state *= Wrapping(n) * self.scale;
                Ok(())
            }
        }
    }

    #[inline(always)]
    fn ext_scale_factor(&mut self) -> Option<TargetExtScaleFactorOps<'_, Self>> {
        Some(self)
    }
}

impl TargetExtScaleFactor for AdvancedTarget {
    #[inline(never)]
    fn scale_factor(&mut self, factor: isize) -> Result<(), Self::Error> {
        self.scale = Wrapping(factor);
        Ok(())
    }
}
