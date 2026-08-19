use core::any::try_as_dyn_mut;

use crate::commands::Command;
use crate::commands::ext;
use crate::commands::parse_isize;

use super::target::Target;
use super::target::TargetExtIncDec;
use super::target::TargetExtMul;
use super::target::TargetExtScaleFactor;

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

    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        /* IncDec extension parsing */
        if try_as_dyn_mut::<T, dyn TargetExtIncDec<Error = T::Error>>(&mut self.target).is_some() {
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
        if try_as_dyn_mut::<T, dyn TargetExtMul<Error = T::Error>>(&mut self.target).is_some() {
            crate::__dead_code_marker!("Parse Mul extension");
            if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
                return Some(Command::Mul(ext::MulCommand::Mul(n)));
            }
        }

        /* ScaleFactor nested extension parsing */
        if try_as_dyn_mut::<T, dyn TargetExtScaleFactor<Error = T::Error>>(&mut self.target).is_some() {
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

    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::Base(base_cmd) => match base_cmd {
                ext::BaseCommand::PrintState => {
                    crate::println_isize!(self.target.base().get_state())
                }
                ext::BaseCommand::SetState(n) => {
                    self.target.base().set_state(*n).map_err(Error::Target)?
                }
            },

            /* IncDec extension */
            Command::IncDec(incdec_cmd) => {
                if let Some(ops) = try_as_dyn_mut::<T, dyn TargetExtIncDec<Error = T::Error>>(&mut self.target) {
                    crate::__dead_code_marker!("IncDec extension");
                    match incdec_cmd {
                        ext::IncDecCommand::Inc => ops.inc().map_err(Error::Target)?,
                        ext::IncDecCommand::Dec => ops.dec().map_err(Error::Target)?,
                        ext::IncDecCommand::IncDec => {
                            ops.inc().map_err(Error::Target)?;
                            ops.dec().map_err(Error::Target)?;
                        }
                    }
                } else {
                    self.unsupported_cmd()?;
                }
            }

            /* Mul extension */
            Command::Mul(mul_cmd) => match mul_cmd {
                ext::MulCommand::Mul(n) => {
                    if let Some(ops) = try_as_dyn_mut::<T, dyn TargetExtMul<Error = T::Error>>(&mut self.target) {
                        crate::__dead_code_marker!("Mul extension");
                        ops.mul(*n).map_err(Error::Target)?;
                    } else {
                        self.unsupported_cmd()?;
                    }
                }
            },

            /* ScaleFactor nested extension */
            Command::MulScaleFactor(scale_factor_cmd) => match scale_factor_cmd {
                ext::MulScaleFactorCommand::ScaleFactor(n) => {
                    if let Some(scale_ops) =
                        try_as_dyn_mut::<T, dyn TargetExtScaleFactor<Error = T::Error>>(
                            &mut self.target,
                        )
                    {
                        crate::__dead_code_marker!("ScaleFactor nested extension");
                        scale_ops.scale_factor(*n).map_err(Error::Target)?;
                    } else {
                        self.unsupported_cmd()?;
                    }
                }
            },
        }

        Ok(())
    }
}
