use crate::target::{OptResult, Target};

pub struct FaultyTarget {
    state: isize,
}

impl FaultyTarget {
    pub fn new(state: isize) -> FaultyTarget {
        FaultyTarget { state }
    }
}

impl Target for FaultyTarget {
    type Error = ();

    fn get_state(&self) -> isize {
        self.state
    }

    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }

    fn inc(&mut self) -> OptResult<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    // uh oh, this target forgot to implement `dec`, resulting in a runtime protocol
    // error!
}
