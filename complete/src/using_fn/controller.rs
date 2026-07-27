use crate::commands::Command;
use crate::commands::ext;
use crate::commands::parse_isize;

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

    pub fn unsupported_cmd(&self) -> Result<(), Error<T::Error>> {
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
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        /* IncDec extension parsing */
        if self.target.ext_incdec().is_some() {
            crate::__dead_code_marker!("Parse IncDec extension");
            if buf == b"+" {
                return Some(Command::IncDec(ext::IncDecCommand::Inc));
            }
            if buf == b"-" {
                return Some(Command::IncDec(ext::IncDecCommand::Dec));
            }
            if buf == b"+-" {
                return Some(Command::IncDec(ext::IncDecCommand::IncDec));
            }
        }

        /* Mul extension parsing */
        if self.target.ext_mul().is_some() {
            crate::__dead_code_marker!("Parse Mul extension");
            if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
                return Some(Command::Mul(ext::MulCommand::Mul(n)));
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
                return Some(Command::Mul(ext::MulCommand::ScaleFactor(n)));
            }
        }

        /* Base protocol parsing */
        if buf == b"p" {
            return Some(Command::Base(ext::BaseCommand::PrintState));
        }
        if let Some(n) = buf.strip_prefix(b"s ").and_then(parse_isize) {
            return Some(Command::Base(ext::BaseCommand::SetState(n)));
        }

        None
    }

    // NOTE: `#[inline(never)]` is used here specifically for pedagogical/assembly
    // inspection purposes, ensuring `handle` is emitted as a standalone symbol in
    // `asm_output/`.
    //
    // Monomorphization still inlines target capability checks into this function,
    // preserving dead-code elimination of unsupported extension handlers.
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::Base(base_cmd) => match base_cmd {
                ext::BaseCommand::PrintState => {
                    crate::println_isize!((self.target.base().get_state)(&self.target))
                }
                ext::BaseCommand::SetState(n) => {
                    (self.target.base().set_state)(&mut self.target, *n).map_err(Error::Target)?
                }
            },

            /* IncDec extension */
            Command::IncDec(incdec_cmd) => {
                if let Some(ops) = self.target.ext_incdec() {
                    crate::__dead_code_marker!("IncDec extension");
                    match incdec_cmd {
                        ext::IncDecCommand::Inc => {
                            (ops.inc)(&mut self.target).map_err(Error::Target)?
                        }
                        ext::IncDecCommand::Dec => {
                            (ops.dec)(&mut self.target).map_err(Error::Target)?
                        }
                        ext::IncDecCommand::IncDec => {
                            (ops.inc)(&mut self.target).map_err(Error::Target)?;
                            (ops.dec)(&mut self.target).map_err(Error::Target)?;
                        }
                    }
                } else {
                    self.unsupported_cmd()?;
                }
            }

            /* Mul extension */
            Command::Mul(mul_cmd) => match mul_cmd {
                ext::MulCommand::Mul(n) => {
                    if let Some(ops) = self.target.ext_mul() {
                        crate::__dead_code_marker!("Mul extension");
                        (ops.mul)(&mut self.target, *n).map_err(Error::Target)?;
                    } else {
                        self.unsupported_cmd()?;
                    }
                }
                ext::MulCommand::ScaleFactor(n) => {
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
            },
        }

        Ok(())
    }
}
