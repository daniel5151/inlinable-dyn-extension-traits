# throw the entire crate into a single .rs file, with can then be copy/pasted into godbolt.org
# automatically copies output into the clipboard

cargo +nightly rustc --release --no-default-features --features="target_$1 using_$2" --profile=check -- -Zunstable-options --pretty=expanded > godbolt_raw.rs

# tweak the header a bit to remove redundant imports + enable certain features.
tail -n +10 godbolt_raw.rs > godbolt.rs
sed -i "1s|^| \
#![feature(fmt_internals, rustc_private)]\n \
#![allow(unused_macros)] \
#![no_std] \
|" godbolt.rs

# make it looks a little prettier
rustfmt +nightly godbolt.rs

# copy it to the clipboard
cat godbolt.rs | xclip -selection clipboard

# cleanup
rm godbolt_raw.rs

