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

    fn handle_no_incdec(&self) -> Result<(), Error<T::Error>> {
        crate::println_str!("IncDec extension not supported!");
        Ok(())
    }

    fn handle_no_mul(&self) -> Result<(), Error<T::Error>> {
        crate::println_str!("Mul extension not supported!");
        Ok(())
    }

    #[inline(never)]
    pub fn run(&mut self, cmds: &[Command]) -> Result<(), Error<T::Error>> {
        for cmd in cmds.iter() {
            match cmd {
                /* Base protocol */
                Command::PrintState => crate::println_isize!(self.target.get_state()),
                Command::SetState(n) => self.target.set_state(*n).map_err(Error::Target)?,

                /* IncDec extension */
                Command::Inc | Command::Dec | Command::IncDec => {
                    match cmd {
                        Command::Inc => {
                            match self.target.inc().map_unimpl().map_err(Error::Target)? {
                                Some(_) => {}
                                None => self.handle_no_incdec()?,
                            };
                        }
                        Command::Dec => {
                            match self.target.dec().map_unimpl().map_err(Error::Target)? {
                                Some(_) => {}
                                None => self.handle_no_incdec()?,
                            };
                        }
                        Command::IncDec => {
                            let inc_impl = self.target.inc().map_unimpl().map_err(Error::Target)?;
                            let dec_impl = self.target.dec().map_unimpl().map_err(Error::Target)?;
                            match (inc_impl, dec_impl) {
                                (Some(_), Some(_)) => {}
                                (None, None) => self.handle_no_incdec()?,
                                _ => return Err(Error::InvalidImpl),
                            }
                        }
                        _ => {} // unreachable
                    }
                }

                /* Mul extension */
                Command::Mul(n) => {
                    match self.target.mul(*n).map_unimpl().map_err(Error::Target)? {
                        Some(_) => {}
                        None => self.handle_no_mul()?,
                    };
                }
            }
        }

        Ok(())
    }
}
