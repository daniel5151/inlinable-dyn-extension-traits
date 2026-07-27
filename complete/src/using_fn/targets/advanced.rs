use core::num::Wrapping;

use super::super::target::Target;
use super::super::target::TargetBaseOps;
use super::super::target::TargetExtIncDecOps;
use super::super::target::TargetExtMulOps;
use super::super::target::TargetExtScaleFactorOps;

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

    #[inline(always)]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> {
        Some(&EXT_INC_DEC_OPS)
    }

    #[inline(always)]
    fn ext_mul(&mut self) -> Option<&'static TargetExtMulOps<Self>> {
        Some(&EXT_MUL_OPS)
    }
}

#[inline(never)]
fn get_state(this: &AdvancedTarget) -> isize {
    this.state.0
}

#[inline(never)]
fn set_state(this: &mut AdvancedTarget, n: isize) -> Result<(), &'static str> {
    this.state = Wrapping(n);
    Ok(())
}

#[inline(never)]
fn inc(this: &mut AdvancedTarget) -> Result<(), &'static str> {
    this.state += 1;
    Ok(())
}

#[inline(never)]
fn dec(this: &mut AdvancedTarget) -> Result<(), &'static str> {
    this.state -= 1;
    Ok(())
}

#[inline(never)]
fn mul(this: &mut AdvancedTarget, n: isize) -> Result<(), &'static str> {
    match n {
        7 => Err("multiplying by 7 is unlucky!"),
        _ => {
            this.state *= Wrapping(n) * this.scale;
            Ok(())
        }
    }
}

#[inline(never)]
fn scale_factor(this: &mut AdvancedTarget, factor: isize) -> Result<(), &'static str> {
    this.scale = Wrapping(factor);
    Ok(())
}

#[inline(always)]
fn ext_scale_factor(
    this: &AdvancedTarget,
) -> Option<&'static TargetExtScaleFactorOps<AdvancedTarget>> {
    let _ = this;
    Some(&EXT_SCALE_FACTOR_OPS)
}

const BASE_OPS: TargetBaseOps<AdvancedTarget> = TargetBaseOps {
    get_state,
    set_state,
};

const EXT_INC_DEC_OPS: TargetExtIncDecOps<AdvancedTarget> = TargetExtIncDecOps { inc, dec };

const EXT_MUL_OPS: TargetExtMulOps<AdvancedTarget> = TargetExtMulOps {
    mul,
    ext_scale_factor,
};

const EXT_SCALE_FACTOR_OPS: TargetExtScaleFactorOps<AdvancedTarget> =
    TargetExtScaleFactorOps { scale_factor };
