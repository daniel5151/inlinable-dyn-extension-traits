use crate::commands::{Command, parse_isize};

use super::target::Target;

pub enum Error<E> {
    Target(E),
}

pub struct TargetController<T: Target> {
    target: T,
}

impl<T: 'static + Target> TargetController<T> {
    pub fn new(target: T) -> TargetController<T> {
        TargetController { target }
    }

    fn unsupported_cmd(&self) -> Result<(), Error<T::Error>> {
        crate::println_str!("Unsupported cmd!");
        Ok(())
    }

    // NOTE: `#[inline(never)]` is used here specifically for pedagogical/assembly
    // inspection purposes, ensuring `parse_command` is emitted as a standalone
    // symbol in `asm_output/`.
    //
    // Monomorphization still inlines `Target::ext_*` into this function, preserving
    // full IDET-based dead-code elimination within `parse_command`. In
    // production code (e.g. gdbstub), omitting `#[inline(never)]` allows LLVM
    // to inline `parse_command` into `run()`, eliminating `Command` enum
    // discriminant overhead across the parsing and handling pipeline.
    #[inline(never)]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        /* IncDec extension parsing */
        if self.target.ext_incdec().is_some() {
            crate::__dead_code_marker!("Parse IncDec extension");
            if buf == b"+" {
                return Some(Command::Inc);
            }
            if buf == b"-" {
                return Some(Command::Dec);
            }
            if buf == b"+-" {
                return Some(Command::IncDec);
            }
        }

        /* Mul extension parsing */
        if self.target.ext_mul().is_some() {
            crate::__dead_code_marker!("Parse Mul extension");
            if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
                return Some(Command::Mul(n));
            }
        }

        /* ScaleFactor nested extension parsing */
        if self
            .target
            .ext_mul()
            .and_then(|ops| (ops.ext_scale_factor)(&self.target))
            .is_some()
        {
            crate::__dead_code_marker!("Parse ScaleFactor extension");
            if let Some(n) = buf.strip_prefix(b"*~ ").and_then(parse_isize) {
                return Some(Command::ScaleFactor(n));
            }
        }

        /* Base protocol parsing */
        if buf == b"p" {
            return Some(Command::PrintState);
        }
        if let Some(n) = buf.strip_prefix(b"s ").and_then(parse_isize) {
            return Some(Command::SetState(n));
        }

        None
    }

    fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::PrintState => {
                crate::println_isize!((self.target.base().get_state)(&self.target))
            }
            Command::SetState(n) => {
                (self.target.base().set_state)(&mut self.target, *n).map_err(Error::Target)?
            }

            /* IncDec extension */
            Command::Inc | Command::Dec | Command::IncDec => {
                if let Some(ops) = self.target.ext_incdec() {
                    crate::__dead_code_marker!("IncDec extension");
                    match cmd {
                        Command::Inc => (ops.inc)(&mut self.target).map_err(Error::Target)?,
                        Command::Dec => (ops.dec)(&mut self.target).map_err(Error::Target)?,
                        Command::IncDec => {
                            (ops.inc)(&mut self.target).map_err(Error::Target)?;
                            (ops.dec)(&mut self.target).map_err(Error::Target)?;
                        }
                        _ => {} // unreachable
                    }
                } else {
                    self.unsupported_cmd()?;
                }
            }

            /* Mul extension */
            Command::Mul(n) => {
                if let Some(ops) = self.target.ext_mul() {
                    crate::__dead_code_marker!("Mul extension");
                    (ops.mul)(&mut self.target, *n).map_err(Error::Target)?;
                } else {
                    self.unsupported_cmd()?;
                }
            }
            /* ScaleFactor nested extension */
            Command::ScaleFactor(n) => {
                if let Some(scale_ops) = self
                    .target
                    .ext_mul()
                    .and_then(|ops| (ops.ext_scale_factor)(&self.target))
                {
                    crate::__dead_code_marker!("ScaleFactor nested extension");
                    (scale_ops.scale_factor)(&mut self.target, *n).map_err(Error::Target)?;
                } else {
                    self.unsupported_cmd()?;
                }
            }
        }

        Ok(())
    }

    #[inline(never)]
    pub fn run(&mut self) -> Result<(), Error<T::Error>> {
        let mut reader = crate::LineReader::new();
        let mut line_buf = [0u8; 128];
        while let Some(line) = reader.read_line(&mut line_buf) {
            if line.is_empty() {
                continue;
            }
            if let Some(cmd) = self.parse_command(line) {
                self.handle(&cmd)?;
            } else {
                self.unsupported_cmd()?;
            }
        }

        Ok(())
    }
}
