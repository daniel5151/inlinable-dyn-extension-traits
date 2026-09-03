use core::num::Wrapping;

use super::super::target::MulArgs;
use super::super::target::ScaleFactorArgs;
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
        self.state -= 1;
        Some(Ok(()))
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn mul(&mut self, args: Option<MulArgs>) -> Option<Result<(), Self::Error>> {
        let Some(MulArgs { n }) = args else {
            return Some(Ok(()));
        };

        Some(match n {
            7 => Err("multiplying by 7 is unlucky!"),
            _ => {
                self.state *= Wrapping(n) * self.scale;
                Ok(())
            }
        })
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn scale_factor(&mut self, args: Option<ScaleFactorArgs>) -> Option<Result<(), Self::Error>> {
        let Some(ScaleFactorArgs { factor }) = args else {
            return Some(Ok(()));
        };
        self.scale = Wrapping(factor);
        Some(Ok(()))
    }
}
