pub struct LineReader {
    buf: [u8; 1024],
    len: usize,
    pos: usize,
}

impl LineReader {
    pub fn new() -> Self {
        Self {
            buf: [0; 1024],
            len: 0,
            pos: 0,
        }
    }
}

impl Default for LineReader {
    fn default() -> Self {
        Self::new()
    }
}

impl LineReader {
    pub fn read_line<'a>(&'a mut self, line_buf: &'a mut [u8]) -> Option<&'a [u8]> {
        let mut out_len = 0;
        loop {
            if self.pos >= self.len {
                let n = unsafe { libc::read(0, self.buf.as_mut_ptr() as *mut _, self.buf.len()) };
                if n <= 0 {
                    if out_len > 0 {
                        return line_buf.get(..out_len);
                    }
                    return None;
                }
                self.len = n as usize;
                self.pos = 0;
            }

            let slice = self.buf.get(self.pos..self.len)?;
            for &byte in slice {
                self.pos += 1;
                if byte == b'\n' {
                    return line_buf.get(..out_len);
                }
                if let Some(slot) = line_buf.get_mut(out_len) {
                    *slot = byte;
                    out_len += 1;
                }
            }
        }
    }
}
