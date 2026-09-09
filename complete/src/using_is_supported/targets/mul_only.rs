use core::num::Wrapping;

use super::super::target::Target;

pub struct MulOnlyTarget {
    state: Wrapping<isize>,
}

impl MulOnlyTarget {
    pub fn new(state: isize) -> MulOnlyTarget {
        MulOnlyTarget {
            state: Wrapping(state),
        }
    }
}

impl Target for MulOnlyTarget {
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
    fn ext_mul_supported(&self) -> bool {
        true
    }

    #[inline(never)]
    fn mul(&mut self, n: isize) -> Result<(), Self::Error> {
        match n {
            7 => Err("multiplying by 7 is unlucky!"),
            _ => {
                self.state *= Wrapping(n);
                Ok(())
            }
        }
    }
}
