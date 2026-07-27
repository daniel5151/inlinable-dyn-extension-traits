use crate::commands::{Command, ext, parse_isize};

use super::opt_result::OptResultExt;
use super::target::Target;

pub enum Error<E> {
    InvalidImpl,
    Target(E),
}

pub struct TargetController<T: Target> {
    target: T,
}

impl<T: Target> TargetController<T> {
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
    // Unlike IDETs (`using_traits`) and Fn Pointers (`using_fn`), the
    // `using_options` pattern does NOT provide capability-query methods on
    // `Target` (e.g. `target.ext_incdec()`). Instead, methods return
    // `Option`/`OptResult` directly when invoked.
    //
    // As a result, packet parsing CANNOT be guarded on target feature support
    // before parsing. The parser MUST speculatively parse all incoming packets,
    // preventing LLVM from dead-code eliminating unused packet parsing branches
    // at compile time.
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        /* IncDec extension parsing - cannot be gated on target support! */
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

        /* Mul extension parsing - cannot be gated on target support! */
        crate::__dead_code_marker!("Parse Mul extension");
        if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
            return Some(Command::Mul(ext::MulCommand::Mul(n)));
        }

        /* ScaleFactor extension parsing - cannot be gated on target support! */
        crate::__dead_code_marker!("Parse ScaleFactor extension");
        if let Some(n) = buf.strip_prefix(b"*~ ").and_then(parse_isize) {
            return Some(Command::Mul(ext::MulCommand::ScaleFactor(n)));
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
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::Base(base_cmd) => match base_cmd {
                ext::BaseCommand::PrintState => crate::println_isize!(self.target.get_state()),
                ext::BaseCommand::SetState(n) => {
                    self.target.set_state(*n).map_err(Error::Target)?
                }
            },

            /* IncDec extension */
            Command::IncDec(incdec_cmd) => {
                crate::__dead_code_marker!("IncDec extension");

                match incdec_cmd {
                    ext::IncDecCommand::Inc => {
                        match self.target.inc().map_unimpl().map_err(Error::Target)? {
                            Some(_) => {}
                            None => self.unsupported_cmd()?,
                        };
                    }
                    ext::IncDecCommand::Dec => {
                        match self.target.dec().map_unimpl().map_err(Error::Target)? {
                            Some(_) => {}
                            None => self.unsupported_cmd()?,
                        };
                    }
                    ext::IncDecCommand::IncDec => {
                        let inc_impl = self.target.inc().map_unimpl().map_err(Error::Target)?;
                        let dec_impl = self.target.dec().map_unimpl().map_err(Error::Target)?;
                        match (inc_impl, dec_impl) {
                            (Some(_), Some(_)) => {}
                            (None, None) => self.unsupported_cmd()?,
                            _ => return Err(Error::InvalidImpl),
                        }
                    }
                }
            }

            /* Mul extension */
            Command::Mul(mul_cmd) => match mul_cmd {
                ext::MulCommand::Mul(n) => {
                    crate::__dead_code_marker!("Mul extension");

                    match self.target.mul(*n).map_unimpl().map_err(Error::Target)? {
                        Some(_) => {}
                        None => self.unsupported_cmd()?,
                    };
                }
                ext::MulCommand::ScaleFactor(n) => {
                    crate::__dead_code_marker!("ScaleFactor extension");

                    match self
                        .target
                        .scale_factor(*n)
                        .map_unimpl()
                        .map_err(Error::Target)?
                    {
                        Some(_) => {}
                        None => self.unsupported_cmd()?,
                    };
                }
            },
        }

        Ok(())
    }
}
