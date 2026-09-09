use core::num::Wrapping;

use super::super::target::Target;
use super::super::target::TargetBaseOps;
use super::super::target::TargetExtMulOps;
use super::super::target::TargetExtScaleFactorOps;

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

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_mul(&mut self) -> Option<&'static TargetExtMulOps<Self>> {
        Some(&EXT_MUL_OPS)
    }
}

#[inline(never)]
fn get_state(this: &MulOnlyTarget) -> isize {
    this.state.0
}

#[inline(never)]
fn set_state(this: &mut MulOnlyTarget, n: isize) -> Result<(), &'static str> {
    this.state = Wrapping(n);
    Ok(())
}

#[inline(never)]
fn mul(this: &mut MulOnlyTarget, n: isize) -> Result<(), &'static str> {
    match n {
        7 => Err("multiplying by 7 is unlucky!"),
        _ => {
            this.state *= Wrapping(n);
            Ok(())
        }
    }
}

#[cfg_attr(feature = "always_inline", inline(always))]
fn ext_scale_factor(
    _this: &MulOnlyTarget,
) -> Option<&'static TargetExtScaleFactorOps<MulOnlyTarget>> {
    None
}

const BASE_OPS: TargetBaseOps<MulOnlyTarget> = TargetBaseOps {
    get_state,
    set_state,
};

const EXT_MUL_OPS: TargetExtMulOps<MulOnlyTarget> = TargetExtMulOps {
    mul,
    ext_scale_factor,
};
