use core::num::Wrapping;

use super::super::target::Target;
use super::super::target::TargetBaseOps;
use super::super::target::TargetExtIncDecOps;

pub struct FaultyTarget {
    state: Wrapping<isize>,
}

impl FaultyTarget {
    pub fn new(state: isize) -> FaultyTarget {
        FaultyTarget {
            state: Wrapping(state),
        }
    }
}

impl Target for FaultyTarget {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> {
        Some(&EXT_INC_DEC_OPS)
    }
}

#[inline(never)]
fn get_state(this: &FaultyTarget) -> isize {
    this.state.0
}

#[inline(never)]
fn set_state(this: &mut FaultyTarget, n: isize) -> Result<(), &'static str> {
    this.state = Wrapping(n);
    Ok(())
}

#[inline(never)]
fn inc(this: &mut FaultyTarget) -> Result<(), &'static str> {
    this.state += 1;
    Ok(())
}

#[inline(never)]
fn dec(_this: &mut FaultyTarget) -> Result<(), &'static str> {
    Err("`dec` operations are not supported yet")
}

const BASE_OPS: TargetBaseOps<FaultyTarget> = TargetBaseOps {
    get_state,
    set_state,
};

const EXT_INC_DEC_OPS: TargetExtIncDecOps<FaultyTarget> = TargetExtIncDecOps { inc, dec };
