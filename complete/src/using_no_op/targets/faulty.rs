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
    fn inc(&mut self, args: Option<()>) -> Option<Result<(), Self::Error>> {
        let Some(()) = args else {
            return Some(Ok(()));
        };
        self.state += 1;
        Some(Ok(()))
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn dec(&mut self, args: Option<()>) -> Option<Result<(), Self::Error>> {
        let Some(()) = args else {
            return Some(Ok(()));
        };
        Some(Err("`dec` operations are not supported yet"))
    }
}
