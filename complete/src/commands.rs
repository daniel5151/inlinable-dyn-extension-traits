pub enum Command {
    // Base Protocol
    PrintState,
    SetState(isize),
    // Requires IncDec Extensions
    Inc,
    Dec,
    IncDec,
    // Requires Mul Extension
    Mul(isize),
}
