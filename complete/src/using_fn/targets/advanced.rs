use crate::target::{Target, TargetBaseOps, TargetExtIncDecOps, TargetExtMulOps};

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

const BASE_OPS: TargetBaseOps<AdvancedTarget> = TargetBaseOps {
    get_state: |this| -> isize { this.state },

    set_state: |this, n: isize| -> Result<(), &'static str> {
        this.state = n;
        Ok(())
    },
};

const EXT_INC_DEC_OPS: TargetExtIncDecOps<AdvancedTarget> = TargetExtIncDecOps {
    inc: |this| -> Result<(), &'static str> {
        this.state += 1;
        Ok(())
    },

    dec: |this| -> Result<(), &'static str> {
        this.state -= 1;
        Ok(())
    },
};

const EXT_MUL_OPS: TargetExtMulOps<AdvancedTarget> = TargetExtMulOps {
    mul: |this, n: isize| -> Result<(), &'static str> {
        match n {
            7 => Err("multiplying by 7 is unlucky!"),
            _ => {
                this.state *= n;
                Ok(())
            }
        }
    },
};
