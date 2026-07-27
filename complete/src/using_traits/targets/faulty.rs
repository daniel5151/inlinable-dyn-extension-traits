use core::num::Wrapping;

use super::super::target::Target;
use super::super::target::TargetBase;
use super::super::target::TargetBaseOps;
use super::super::target::TargetExtIncDec;
use super::super::target::TargetExtIncDecOps;

pub struct FaultyTarget {
    state: Wrapping<isize>,
}

impl FaultyTarget {
    pub fn new(state: isize) -> FaultyTarget {
        FaultyTarget {
            state: Wrapping(state),
        }
    }
}

impl Target for FaultyTarget {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        Some(self)
    }
}

impl TargetBase for FaultyTarget {
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

impl TargetExtIncDec for FaultyTarget {
    #[inline(never)]
    fn inc(&mut self) -> Result<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    // impossible to forget `dec` implementation, it'll be a compile error!
    #[inline(never)]
    fn dec(&mut self) -> Result<(), Self::Error> {
        // ...but there's no reason why a target can't add a stub implementation
        // which will gracefully fail at runtime.
        Err("`dec` operations are not supported yet")
    }
}
