use core::num::Wrapping;

use super::super::target::OptResult;
use super::super::target::Target;

pub struct AdvancedTarget {
    state: Wrapping<isize>,
    scale: Wrapping<isize>,
}

impl AdvancedTarget {
    pub fn new(state: isize) -> AdvancedTarget {
        AdvancedTarget {
            state: Wrapping(state),
            scale: Wrapping(1),
        }
    }
}

impl Target for AdvancedTarget {
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

    #[inline(never)]
    fn inc(&mut self) -> OptResult<(), Self::Error> {
        self.state += 1;
        Ok(())
    }

    #[inline(never)]
    fn dec(&mut self) -> OptResult<(), Self::Error> {
        self.state -= 1;
        Ok(())
    }

    #[inline(never)]
    fn mul(&mut self, n: isize) -> OptResult<(), Self::Error> {
        match n {
            7 => Err("multiplying by 7 is unlucky!".into()),
            _ => {
                self.state *= Wrapping(n) * self.scale;
                Ok(())
            }
        }
    }

    #[inline(never)]
    fn scale_factor(&mut self, factor: isize) -> OptResult<(), Self::Error> {
        self.scale = Wrapping(factor);
        Ok(())
    }
}
