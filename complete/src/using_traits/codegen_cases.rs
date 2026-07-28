//! Focused codegen cases for the limits of IDET dead-code elimination.
//!
//! These are intentionally separate from the six-way static-target experiment
//! and focus specifically on IDET behavior outside the static concrete cases.

use super::controller::TargetController;
use super::target::Target;
use super::target::TargetBase;
use super::target::TargetBaseOps;
use super::target::TargetExtIncDec;
use super::target::TargetExtIncDecOps;

struct RuntimeToggleTarget<'a> {
    state: &'a mut isize,
    incdec_enabled: bool,
}

impl Target for RuntimeToggleTarget<'_> {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        self.incdec_enabled.then_some(self)
    }
}

impl TargetBase for RuntimeToggleTarget<'_> {
    #[inline(never)]
    fn get_state(&self) -> isize {
        *self.state
    }

    #[inline(never)]
    fn set_state(&mut self, value: isize) -> Result<(), Self::Error> {
        *self.state = value;
        Ok(())
    }
}

impl TargetExtIncDec for RuntimeToggleTarget<'_> {
    #[inline(never)]
    fn inc(&mut self) -> Result<(), Self::Error> {
        *self.state += 1;
        Ok(())
    }

    #[inline(never)]
    fn dec(&mut self) -> Result<(), Self::Error> {
        *self.state -= 1;
        Ok(())
    }
}

/// Parse and handle one command using a concrete target whose IncDec
/// capability varies per instance.
///
/// `incdec_enabled` and `command` are function arguments so optimized codegen
/// cannot treat either value as a build-time constant.
#[unsafe(no_mangle)]
pub fn run_runtime_toggle_case(incdec_enabled: bool, command: &[u8]) -> isize {
    let mut state = 0;
    {
        let target = RuntimeToggleTarget {
            state: &mut state,
            incdec_enabled,
        };
        let mut controller = TargetController::new(target);

        if let Some(command) = controller.parse_command(command) {
            let _ = controller.handle(&command);
        }
    }
    state
}

struct ErasedBasicTarget<'a> {
    state: &'a mut isize,
}

impl Target for ErasedBasicTarget<'_> {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }
}

impl TargetBase for ErasedBasicTarget<'_> {
    #[inline(never)]
    fn get_state(&self) -> isize {
        *self.state
    }

    #[inline(never)]
    fn set_state(&mut self, value: isize) -> Result<(), Self::Error> {
        *self.state = value;
        Ok(())
    }
}

struct ErasedAdvancedTarget<'a> {
    state: &'a mut isize,
}

impl Target for ErasedAdvancedTarget<'_> {
    type Error = &'static str;

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn base(&mut self) -> TargetBaseOps<'_, Self> {
        self
    }

    #[cfg_attr(feature = "always_inline", inline(always))]
    fn ext_incdec(&mut self) -> Option<TargetExtIncDecOps<'_, Self>> {
        Some(self)
    }
}

impl TargetBase for ErasedAdvancedTarget<'_> {
    #[inline(never)]
    fn get_state(&self) -> isize {
        *self.state
    }

    #[inline(never)]
    fn set_state(&mut self, value: isize) -> Result<(), Self::Error> {
        *self.state = value;
        Ok(())
    }
}

impl TargetExtIncDec for ErasedAdvancedTarget<'_> {
    #[inline(never)]
    fn inc(&mut self) -> Result<(), Self::Error> {
        *self.state += 1;
        Ok(())
    }

    #[inline(never)]
    fn dec(&mut self) -> Result<(), Self::Error> {
        *self.state -= 1;
        Ok(())
    }
}

fn run_concrete_case<T>(target: T, command: &[u8])
where
    T: Target<Error = &'static str>,
{
    let mut controller = TargetController::new(target);
    if let Some(command) = controller.parse_command(command) {
        let _ = controller.handle(&command);
    }
}

/// Parse and handle one command using a statically known Basic capability set.
///
/// This is a like-for-like reference for the disabled runtime and erased cases.
#[unsafe(no_mangle)]
pub fn run_static_basic_case(command: &[u8]) -> isize {
    let mut state = 0;
    run_concrete_case(
        ErasedBasicTarget {
            state: &mut state,
        },
        command,
    );
    state
}

/// Parse and handle one command using a statically known IncDec capability set.
///
/// This is a like-for-like reference for the enabled runtime and erased cases.
#[unsafe(no_mangle)]
pub fn run_static_advanced_case(command: &[u8]) -> isize {
    let mut state = 0;
    run_concrete_case(
        ErasedAdvancedTarget {
            state: &mut state,
        },
        command,
    );
    state
}

/// Parse and handle one command after the caller has erased its concrete target.
///
/// Keeping the trait object at this exported function boundary prevents the
/// optimizer from narrowing the experiment to a single locally constructed
/// concrete target.
#[unsafe(no_mangle)]
pub fn run_erased_target_case(
    target: &mut dyn Target<Error = &'static str>,
    command: &[u8],
) -> isize {
    {
        let mut controller = TargetController::new(&mut *target);

        if let Some(command) = controller.parse_command(command) {
            let _ = controller.handle(&command);
        }
    }
    target.base().get_state()
}

/// Select a concrete target at runtime, erase it, and run one command.
///
/// This wrapper makes both vtables reachable from a standalone benchmark while
/// keeping `run_erased_target_case` as the codegen boundary under inspection.
#[unsafe(no_mangle)]
pub fn run_erased_selection_case(select_advanced: bool, command: &[u8]) -> isize {
    let mut basic_state = 0;
    let mut advanced_state = 0;
    let mut basic = ErasedBasicTarget {
        state: &mut basic_state,
    };
    let mut advanced = ErasedAdvancedTarget {
        state: &mut advanced_state,
    };
    let target: &mut dyn Target<Error = &'static str> = if select_advanced {
        &mut advanced
    } else {
        &mut basic
    };
    run_erased_target_case(target, command)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn runtime_toggle_controls_parsing_and_dispatch_per_instance() {
        assert_eq!(run_runtime_toggle_case(false, b"+"), 0);
        assert_eq!(run_runtime_toggle_case(true, b"+"), 1);
        assert_eq!(run_runtime_toggle_case(true, b"-"), -1);
    }

    #[test]
    fn erased_target_dispatches_to_the_runtime_selected_capability_set() {
        assert_eq!(run_erased_selection_case(false, b"+"), 0);
        assert_eq!(run_erased_selection_case(true, b"+"), 1);
        assert_eq!(run_erased_selection_case(true, b"-"), -1);
    }
}
