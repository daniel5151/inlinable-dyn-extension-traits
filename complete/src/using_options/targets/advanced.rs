use super::super::target::{OptResult, Target};

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

    fn dec(&mut self) -> OptResult<(), Self::Error> {
        self.state -= 1;
        Ok(())
    }

    fn mul(&mut self, n: isize) -> OptResult<(), Self::Error> {
        match n {
            7 => Err("multiplying by 7 is unlucky!".into()),
            _ => {
                self.state *= n;
                Ok(())
            }
        }
    }
}
