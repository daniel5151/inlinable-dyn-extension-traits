// mod using_traits;
// use using_traits::*;

// mod using_options;
// use using_options::*;

mod using_fn;
use using_fn::*;

mod commands;
mod print_macros;

use commands::Command;
use controller::TargetController;

pub fn main() {
    // let target = targets::BasicTarget::new(0);
    let target = targets::AdvancedTarget::new(0);
    // let target = targets::FaultyTarget::new(0);

    let mut controller = TargetController::new(target);

    // for _ in 0..(1024 * 1024 * 128) {
    if let Err(e) = controller.run(&[
        Command::PrintState,
        Command::SetState(2),
        Command::PrintState,
        Command::Inc,
        Command::Inc,
        Command::Inc,
        Command::PrintState,
        Command::IncDec, // <-- Faulty target will fail here
        Command::PrintState,
        Command::Dec,
        Command::PrintState,
        Command::Mul(2),
        Command::PrintState,
        Command::Mul(7), // <-- Advanced target doesn't like multiplying by 7
        Command::PrintState,
    ]) {
        crate::eprintln_debug!("Error: {:?}", e);
    }
    // }
}
