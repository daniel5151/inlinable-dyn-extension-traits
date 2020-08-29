use super::super::target::Target;

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

    fn get_state(&self) -> isize {
        self.state
    }

    fn set_state(&mut self, n: isize) -> Result<(), Self::Error> {
        self.state = n;
        Ok(())
    }
}
