use super::super::target::{Target, TargetBaseOps};

pub struct BasicTarget {
    state: isize,
}

impl BasicTarget {
    pub fn new(state: isize) -> BasicTarget {
        BasicTarget { state }
    }
}

impl Target for BasicTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }
}

#[inline(never)]
fn get_state(this: &BasicTarget) -> isize {
    this.state
}

#[inline(never)]
fn set_state(this: &mut BasicTarget, n: isize) -> Result<(), &'static str> {
    this.state = n;
    Ok(())
}

const BASE_OPS: TargetBaseOps<BasicTarget> = TargetBaseOps {
    get_state,
    set_state,
};
