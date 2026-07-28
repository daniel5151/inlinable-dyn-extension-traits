#[cfg(not(feature = "bench"))]
#[inline(never)]
fn write_all(mut bytes: &[u8]) {
    while !bytes.is_empty() {
        let written = unsafe { libc::write(1, bytes.as_ptr().cast(), bytes.len()) };
        if written <= 0 {
            return;
        }
        bytes = &bytes[written as usize..];
    }
}

#[cfg(not(feature = "bench"))]
#[inline(never)]
pub(crate) fn write_line(value: &str) {
    write_all(value.as_bytes());
    write_all(b"\n");
}

#[cfg(not(feature = "bench"))]
#[inline(never)]
pub(crate) fn write_isize_line(value: isize) {
    let mut bytes = [0u8; 32];
    let mut cursor = bytes.len();
    let mut magnitude = value.unsigned_abs();

    cursor -= 1;
    bytes[cursor] = b'\n';
    loop {
        cursor -= 1;
        bytes[cursor] = b'0' + (magnitude % 10) as u8;
        magnitude /= 10;
        if magnitude == 0 {
            break;
        }
    }

    if value < 0 {
        cursor -= 1;
        bytes[cursor] = b'-';
    }

    write_all(&bytes[cursor..]);
}

#[cfg(feature = "bench")]
#[macro_export]
macro_rules! println_isize {
    ($num:expr) => {{
        core::hint::black_box($num);
    }};
}

#[cfg(feature = "bench")]
#[macro_export]
macro_rules! println_str {
    ($s:expr) => {{
        core::hint::black_box($s);
    }};
}

#[cfg(not(feature = "bench"))]
#[macro_export]
macro_rules! println_isize {
    ($num:expr) => {{
        $crate::print_macros::write_isize_line($num);
    }};
}

#[cfg(not(feature = "bench"))]
#[macro_export]
macro_rules! println_str {
    ($s:expr) => {{
        $crate::print_macros::write_line($s);
    }};
}
