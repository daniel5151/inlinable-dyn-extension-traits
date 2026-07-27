#[derive(Clone, Copy, Debug)]
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
    // Requires Nested ScaleFactor Extension
    ScaleFactor(isize),
}

#[inline(never)]
pub fn parse_isize(bytes: &[u8]) -> Option<isize> {
    let (is_neg, digits) = match bytes.split_first()? {
        (b'-', rest) => (true, rest),
        (b'+', rest) => (false, rest),
        (_, rest) => (false, rest),
    };
    if digits.is_empty() {
        return None;
    }
    let mut val: isize = 0;
    for &b in digits {
        let d = b.wrapping_sub(b'0');
        if d > 9 {
            return None;
        }
        val = val.checked_mul(10)?;
        val = val.checked_add(d as isize)?;
    }
    let sign = if is_neg { -1 } else { 1 };
    val.checked_mul(sign)
}
