use super::super::target::{
    Target, TargetBase, TargetBaseOps, TargetExtIncDec, TargetExtIncDecOps, TargetExtMul,
    TargetExtMulOps,
};

pub struct AdvancedTarget {
    state: isize,
}

impl AdvancedTarget {
    pub fn new(state: isize) -> AdvancedTarget {
        AdvancedTarget { state }
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
        self.state
    }

    #[inline(never)]
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
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
                self.state *= n;
                Ok(())
            }
        }
    }
}
