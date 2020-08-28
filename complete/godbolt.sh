# throw the entire crate into a single .rs file, with can then be copy/pasted into godbolt.org

cargo +nightly rustc --release --profile=check -- -Zunstable-options --pretty=expanded > godbolt_raw.rs

# tweak the header a bit to remove redundant imports + enable certain features.
tail -n +6 godbolt_raw.rs > godbolt.rs
sed -i "1s|^| \
#![feature(fmt_internals, print_internals)]\n \
#![allow(unused_macros)] \
extern crate core;\n \
|" godbolt.rs

# make it looks a little prettier
rustfmt +nightly godbolt.rs

# copy it to the clipboard
cat godbolt.rs | xclip -selection clipboard

# cleanup
rm godbolt_raw.rs

