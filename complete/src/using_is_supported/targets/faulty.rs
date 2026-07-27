use core::num::Wrapping;

use super::super::target::Target;

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

    #[inline(never)]
    fn get_state(&self) -> isize {
        self.state.0
    }

    #[inline(never)]
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = Wrapping(n);
        Ok(())
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec_supported(&self) -> bool {
        true
    }

    #[inline(never)]
    fn inc(&mut self) -> Result<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    #[inline(never)]
    fn dec(&mut self) -> Result<(), Self::Error> {
        Err("`dec` operations are not supported yet")
    }
}
