#[path = "../../src/using_traits/target.rs"]
mod target;

use target::Target;
use target::TargetBase;
use target::TargetBaseOps;
use target::TargetExtScaleFactor;

struct InvalidTarget;

impl Target for InvalidTarget {
    type Error = ();

    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }
}

impl TargetBase for InvalidTarget {
    fn get_state(&self) -> isize {
        0
    }

    fn set_state(&mut self, _n: isize) -> Result<(), Self::Error> {
        Ok(())
    }
}

// This must fail because MulScaleFactor requires the parent Mul extension.
impl TargetExtScaleFactor for InvalidTarget {
    fn scale_factor(&mut self, _factor: isize) -> Result<(), Self::Error> {
        Ok(())
    }
}

fn main() {}
