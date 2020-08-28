use crate::target::{Target, TargetBase, TargetBaseOps, TargetExtIncDec, TargetExtIncDecOps};

pub struct FaultyTarget {
    state: isize,
}

impl FaultyTarget {
    pub fn new(state: isize) -> FaultyTarget {
        FaultyTarget { state }
    }
}

impl Target for FaultyTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> TargetBaseOps<Self> {
        self
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<Self>> {
        Some(self)
    }
}

impl TargetBase for FaultyTarget {
    fn get_state(&self) -> isize {
        self.state
    }

    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }
}

impl TargetExtIncDec for FaultyTarget {
    fn inc(&mut self) -> Result<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    // impossible to forget `dec` implementation, it'll be a compile error!
    fn dec(&mut self) -> Result<(), Self::Error> {
        // ...but there's no reason why a target can't add a stub implementation
        // which will gracefully fail at runtime.
        Err("`dec` operations are not supported yet")
    }
}
