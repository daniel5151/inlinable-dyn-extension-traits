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
    // symbol in `asm/noinline/<target-triple>/`.
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        /* IncDec extension parsing - gated at compile time */
        #[cfg(ext_incdec)]
        {
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

        /* Mul extension parsing - gated at compile time */
        #[cfg(ext_mul)]
        {
            crate::__dead_code_marker!("Parse Mul extension");
            if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
                return Some(Command::Mul(ext::MulCommand::Mul(n)));
            }
        }

        /* ScaleFactor extension parsing - gated at compile time */
        #[cfg(ext_mul_scale_factor)]
        {
            crate::__dead_code_marker!("Parse ScaleFactor extension");
            if let Some(n) = buf.strip_prefix(b"*~ ").and_then(parse_isize) {
                return Some(Command::MulScaleFactor(
                    ext::MulScaleFactorCommand::ScaleFactor(n),
                ));
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
    // `asm/noinline/<target-triple>/`.
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
            #[cfg(ext_incdec)]
            Command::IncDec(incdec_cmd) => {
                crate::__dead_code_marker!("IncDec extension");
                match incdec_cmd {
                    ext::IncDecCommand::Inc => self.target.inc().map_err(Error::Target)?,
                    ext::IncDecCommand::Dec => self.target.dec().map_err(Error::Target)?,
                    ext::IncDecCommand::IncDec => {
                        self.target.inc().map_err(Error::Target)?;
                        self.target.dec().map_err(Error::Target)?;
                    }
                }
            }

            /* Mul extension */
            #[cfg(ext_mul)]
            Command::Mul(mul_cmd) => match mul_cmd {
                ext::MulCommand::Mul(n) => {
                    crate::__dead_code_marker!("Mul extension");
                    self.target.mul(*n).map_err(Error::Target)?;
                }
            },

            /* ScaleFactor nested extension */
            #[cfg(ext_mul_scale_factor)]
            Command::MulScaleFactor(scale_factor_cmd) => match scale_factor_cmd {
                ext::MulScaleFactorCommand::ScaleFactor(n) => {
                    crate::__dead_code_marker!("ScaleFactor extension");
                    self.target.scale_factor(*n).map_err(Error::Target)?;
                }
            },
        }

        Ok(())
    }
}
