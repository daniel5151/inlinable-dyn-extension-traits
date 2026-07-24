use crate::commands::Command;

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
            // notice the "hint" match guard? try removing it, and check the asm output.
            Command::Inc | Command::Dec | Command::IncDec if self.target.ext_incdec().is_some() => {
                crate::__dead_code_marker!("IncDec extension");

                let ops = self.target.ext_incdec().unwrap();
                match cmd {
                    Command::Inc => (ops.inc)(&mut self.target).map_err(Error::Target)?,
                    Command::Dec => (ops.dec)(&mut self.target).map_err(Error::Target)?,
                    Command::IncDec => {
                        (ops.inc)(&mut self.target).map_err(Error::Target)?;
                        (ops.dec)(&mut self.target).map_err(Error::Target)?;
                    }
                    _ => {} // unreachable
                }
            }

            /* Mul extension */
            Command::Mul(n) if self.target.ext_mul().is_some() => {
                crate::__dead_code_marker!("Mul extension");

                let ops = self.target.ext_mul().unwrap();
                (ops.mul)(&mut self.target, *n).map_err(Error::Target)?;
            }
            _ => self.unsupported_cmd()?,
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
