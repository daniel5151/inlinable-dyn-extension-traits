pub(crate) mod libc {
    // use libc formatting to keep the assembly readable
    extern "C" {
        pub(crate) fn printf(format: *const u8, ...) -> i32;
        pub(crate) fn write(fd: i32, buf: *const u8, count: usize) -> isize;
    }

    #[macro_export]
    macro_rules! println_isize {
        ($num:expr) => {
            unsafe {
                crate::print_macros::libc::printf("%d\n\0".as_ptr(), $num);
            }
        };
    }

    #[macro_export]
    macro_rules! println_str {
        ($s:expr) => {{
            let s = $s;
            unsafe {
                crate::print_macros::libc::write(1, s.as_ptr(), s.len());
                crate::print_macros::libc::write(1, "\n".as_ptr(), 1);
            }
        }};
    }
}

// Benchmark impls
// pub(crate) mod bench {
//     // looks like giving memcpy a slightly different signature prevents it
//     // from being inlined
//     extern "C" {
//         pub fn memcpy(dst: usize, dst: usize, n: usize) -> *const u8;
//     }

//     #[macro_export]
//     macro_rules! println_isize {
//         ($num:expr) => {{
//             let _ = $num;
//             unsafe {
//                 crate::print_macros::bench::memcpy(
//                     &0u8 as *const u8 as _,
//                     &0u8 as *const u8 as _,
//                     0,
//                 );
//             }
//         }};
//     }

//     #[macro_export]
//     macro_rules! println_str {
//         ($s:expr) => {{
//             let _ = $s;
//             unsafe {
//                 crate::print_macros::bench::memcpy(
//                     &0u8 as *const u8 as _,
//                     &0u8 as *const u8 as _,
//                     0,
//                 );
//             }
//         }};
//     }

// }
