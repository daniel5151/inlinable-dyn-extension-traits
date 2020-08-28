use crate::commands::Command;

use crate::target::Target;

#[derive(Debug)]
pub enum Error<E> {
    Target(E),
}

#[derive(Default)]
pub struct TargetController<T: Target> {
    target: T,
}

impl<T: Target> TargetController<T> {
    pub fn new(target: T) -> TargetController<T> {
        TargetController { target }
    }

    fn handle(&mut self, cmd: &Command) -> Result<(), Error<T::Error>> {
        match cmd {
            /* Base protocol */
            Command::PrintState => crate::println_isize!(self.target.base().get_state()),
            Command::SetState(n) => self.target.base().set_state(*n).map_err(Error::Target)?,

            /* IncDec extension */
            Command::Inc | Command::Dec | Command::IncDec => {
                let ops = match self.target.ext_incdec() {
                    Some(ops) => ops,
                    None => {
                        crate::println_str!("IncDec extension not supported!");
                        return Ok(());
                    }
                };

                match cmd {
                    Command::Inc => ops.inc().map_err(Error::Target)?,
                    Command::Dec => ops.dec().map_err(Error::Target)?,
                    Command::IncDec => {
                        ops.inc().map_err(Error::Target)?;
                        ops.dec().map_err(Error::Target)?;
                    }
                    _ => {} // unreachable
                }
            }

            /* Mul extension */
            Command::Mul(n) => {
                let ops = match self.target.ext_mul() {
                    Some(ops) => ops,
                    None => {
                        crate::println_str!("Mul extension not supported!");
                        return Ok(());
                    }
                };

                ops.mul(*n).map_err(Error::Target)?;
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
