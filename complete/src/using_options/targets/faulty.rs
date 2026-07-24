use super::super::target::{OptResult, Target};

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

    #[inline(never)]
    fn get_state(&self) -> isize {
        self.state
    }

    #[inline(never)]
    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }

    #[inline(never)]
    fn inc(&mut self) -> OptResult<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    // uh oh, this target forgot to implement `dec`, resulting in a runtime protocol
    // error!
}
