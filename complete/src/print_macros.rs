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
pub(crate) mod libc {
    unsafe extern "C" {
        pub(crate) fn printf(format: *const u8, ...) -> i32;
        pub(crate) fn write(fd: i32, buf: *const u8, count: usize) -> isize;
    }
}

#[cfg(not(feature = "bench"))]
#[macro_export]
macro_rules! println_isize {
    ($num:expr) => {{
        let num = $num;
        unsafe {
            $crate::print_macros::libc::printf("%d\n\0".as_ptr(), num);
        }
    }};
}

#[cfg(not(feature = "bench"))]
#[macro_export]
macro_rules! println_str {
    ($s:expr) => {{
        let s = $s;
        unsafe {
            $crate::print_macros::libc::write(1, s.as_ptr(), s.len());
            $crate::print_macros::libc::write(1, "\n".as_ptr(), 1);
        }
    }};
}
