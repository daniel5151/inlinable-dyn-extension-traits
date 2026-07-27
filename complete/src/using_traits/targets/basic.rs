use super::super::target::Target;
use super::super::target::TargetBase;
use super::super::target::TargetBaseOps;

pub struct BasicTarget {
    state: isize,
}

impl BasicTarget {
    pub fn new(state: isize) -> BasicTarget {
        BasicTarget { state }
    }
}

impl Target for BasicTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }
}

impl TargetBase for BasicTarget {
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
