use super::super::target::{Target, TargetBase, TargetBaseOps};

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
    fn base(&mut self) -> TargetBaseOps<Self> {
        self
    }
}

impl TargetBase for BasicTarget {
    fn get_state(&self) -> isize {
        self.state
    }

    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }
}
