use crate::commands::Command;

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

    fn unsupported_cmd(&self) -> Result<(), Error<T::Error>> {
        crate::println_str!("Unsupported cmd!");
        Ok(())
    }

    fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::PrintState => crate::println_isize!(self.target.get_state()),
            Command::SetState(n) => self.target.set_state(*n).map_err(Error::Target)?,

            /* IncDec extension */
            Command::Inc | Command::Dec | Command::IncDec => {
                crate::__dead_code_marker!("IncDec extension");

                match cmd {
                    Command::Inc => {
                        match self.target.inc().map_unimpl().map_err(Error::Target)? {
                            Some(_) => {}
                            None => self.unsupported_cmd()?,
                        };
                    }
                    Command::Dec => {
                        match self.target.dec().map_unimpl().map_err(Error::Target)? {
                            Some(_) => {}
                            None => self.unsupported_cmd()?,
                        };
                    }
                    Command::IncDec => {
                        let inc_impl = self.target.inc().map_unimpl().map_err(Error::Target)?;
                        let dec_impl = self.target.dec().map_unimpl().map_err(Error::Target)?;
                        match (inc_impl, dec_impl) {
                            (Some(_), Some(_)) => {}
                            (None, None) => self.unsupported_cmd()?,
                            _ => return Err(Error::InvalidImpl),
                        }
                    }
                    _ => {} // unreachable
                }
            }

            /* Mul extension */
            Command::Mul(n) => {
                crate::__dead_code_marker!("Mul extension");

                match self.target.mul(*n).map_unimpl().map_err(Error::Target)? {
                    Some(_) => {}
                    None => self.unsupported_cmd()?,
                };
            }
        }

        Ok(())
    }

    #[inline(never)]
    pub fn run(&mut self, cmds: &[Command]) -> Result<(), Error<T::Error>> {
        for cmd in cmds.iter() {
            self.handle(cmd)?
        }

        Ok(())
    }
}
