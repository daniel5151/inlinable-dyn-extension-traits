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
    fn base(&mut self) -> TargetBaseOps<Self> {
        self
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
        Some(self)
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<TargetExtMulOps<Self>> {
        Some(self)
    }
}

impl TargetBase for AdvancedTarget {
    fn get_state(&self) -> isize {
        self.state
    }

    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }
}

impl TargetExtIncDec for AdvancedTarget {
    fn inc(&mut self) -> Result<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    fn dec(&mut self) -> Result<(), Self::Error> {
        self.state -= 1;
        Ok(())
    }
}

impl TargetExtMul for AdvancedTarget {
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
