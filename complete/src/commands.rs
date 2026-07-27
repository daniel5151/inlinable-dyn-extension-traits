pub mod ext {
    #[derive(Clone, Copy, Debug)]
    pub enum BaseCommand {
        PrintState,
        SetState(isize),
    }

    #[cfg(cmd_incdec)] // (only used in using_cfg_gates case)
    #[derive(Clone, Copy, Debug)]
    pub enum IncDecCommand {
        Inc,
        Dec,
        IncDec,
    }

    #[cfg(cmd_mul)] // (only used in using_cfg_gates case)
    #[derive(Clone, Copy, Debug)]
    pub enum MulCommand {
        Mul(isize),
        ScaleFactor(isize),
    }
}

#[derive(Clone, Copy, Debug)]
pub enum Command {
    Base(ext::BaseCommand),
    #[cfg(cmd_incdec)] // (only used in using_cfg_gates case)
    IncDec(ext::IncDecCommand),
    #[cfg(cmd_mul)] // (only used in using_cfg_gates case)
    Mul(ext::MulCommand),
}

#[cfg_attr(feature = "interpretable_asm", inline(never))]
pub fn parse_isize(bytes: &[u8]) -> Option<isize> {
    let (is_neg, digits) = match bytes.split_first()? {
        (b'-', rest) => (true, rest),
        (b'+', rest) => (false, rest),
        _ => (false, bytes),
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

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_parse_isize() {
        assert_eq!(parse_isize(b"5"), Some(5));
        assert_eq!(parse_isize(b"42"), Some(42));
        assert_eq!(parse_isize(b"-42"), Some(-42));
        assert_eq!(parse_isize(b"+42"), Some(42));
        assert_eq!(parse_isize(b"0"), Some(0));
        assert_eq!(parse_isize(b""), None);
        assert_eq!(parse_isize(b"-"), None);
        assert_eq!(parse_isize(b"+"), None);
        assert_eq!(parse_isize(b"abc"), None);
    }
}
