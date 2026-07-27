pub mod ext {
    #[derive(Clone, Copy, Debug)]
    pub enum BaseCommand {
        PrintState,
        SetState(isize),
    }

    #[derive(Clone, Copy, Debug)]
    pub enum IncDecCommand {
        Inc,
        Dec,
        IncDec,
    }

    #[derive(Clone, Copy, Debug)]
    pub enum MulCommand {
        Mul(isize),
        ScaleFactor(isize),
    }
}

#[derive(Clone, Copy, Debug)]
pub enum Command {
    Base(ext::BaseCommand),
    IncDec(ext::IncDecCommand),
    Mul(ext::MulCommand),
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
