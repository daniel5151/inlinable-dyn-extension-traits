use super::super::target::{Target, TargetBaseOps, TargetExtIncDecOps};

pub struct FaultyTarget {
    state: isize,
}

impl FaultyTarget {
    pub fn new(state: isize) -> FaultyTarget {
        FaultyTarget { state }
    }
}

impl Target for FaultyTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }

    #[inline(always)]
    fn ext_incdec(&mut self) -> Option<&'static TargetExtIncDecOps<Self>> {
        Some(&EXT_INC_DEC_OPS)
    }
}

const BASE_OPS: TargetBaseOps<FaultyTarget> = TargetBaseOps {
    get_state: |this| -> isize { this.state },

    set_state: |this, n: isize| -> Result<(), &'static str> {
        this.state = n;
        Ok(())
    },
};

const EXT_INC_DEC_OPS: TargetExtIncDecOps<FaultyTarget> = TargetExtIncDecOps {
    inc: |this| -> Result<(), &'static str> {
        this.state += 1;
        Ok(())
    },

    // impossible to forget `dec` implementation, it'll be a compile error!
    dec: |_this| -> Result<(), &'static str> {
        // ...but there's no reason why a target can't add a stub implementation
        // which will gracefully fail at runtime.
        Err("`dec` operations are not supported yet")
    },
};
