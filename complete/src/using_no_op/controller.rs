use crate::commands::Command;
use crate::commands::ext;
use crate::commands::parse_isize;

use super::target::MulArgs;
use super::target::ScaleFactorArgs;
use super::target::Target;

pub enum Error<E> {
    Target(E),
}

#[derive(Clone, Copy)]
struct SupportedExtensions {
    incdec: bool,
    mul: bool,
    scale_factor: bool,
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

    /// Probe optional handlers with `None`, which implementations must treat as
    /// a side-effect-free support query. The paired checks let the controller
    /// catch invalid extension combinations before invoking a real operation.
    #[cfg_attr(feature = "always_inline", inline(always))]
    fn supported_extensions(&mut self) -> SupportedExtensions {
        let inc = self.target.inc(None).is_some();
        let dec = self.target.dec(None).is_some();
        let mul = self.target.mul(None).is_some();
        let scale_factor = self.target.scale_factor(None).is_some();

        assert!(inc == dec, "must implement `inc` and `dec` together");
        assert!(
            !scale_factor || mul,
            "must implement `mul` when implementing `scale_factor`"
        );

        SupportedExtensions {
            incdec: inc,
            mul,
            scale_factor,
        }
    }

    // NOTE: `#[inline(never)]` is used here specifically for pedagogical/assembly
    // inspection purposes, ensuring `parse_command` is emitted as a standalone
    // symbol in `asm/noinline/<target-triple>/`.
    //
    // With inlining enabled, the `None` calls above become constant capability
    // queries, allowing unsupported packet parsers to be dead-code eliminated.
    #[cfg_attr(feature = "interpretable_asm", inline(never))]
    pub fn parse_command(&mut self, buf: &[u8]) -> Option<Command> {
        let supported = self.supported_extensions();

        /* IncDec extension parsing */
        if supported.incdec {
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
        if supported.mul {
            crate::__dead_code_marker!("Parse Mul extension");
            if let Some(n) = buf.strip_prefix(b"* ").and_then(parse_isize) {
                return Some(Command::Mul(ext::MulCommand::Mul(n)));
            }
        }

        /* ScaleFactor nested extension parsing */
        if supported.scale_factor {
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
            Command::IncDec(incdec_cmd) => {
                let supported = self.supported_extensions();
                if !supported.incdec {
                    self.unsupported_cmd()?;
                } else {
                    crate::__dead_code_marker!("IncDec extension");
                    match incdec_cmd {
                        ext::IncDecCommand::Inc => {
                            let result = self.target.inc(Some(()));
                            self.handle_result(result)?;
                        }
                        ext::IncDecCommand::Dec => {
                            let result = self.target.dec(Some(()));
                            self.handle_result(result)?;
                        }
                        ext::IncDecCommand::IncDec => {
                            let inc_result = self.target.inc(Some(()));
                            self.handle_result(inc_result)?;
                            let dec_result = self.target.dec(Some(()));
                            self.handle_result(dec_result)?;
                        }
                    }
                }
            }

            /* Mul extension */
            Command::Mul(mul_cmd) => match mul_cmd {
                ext::MulCommand::Mul(n) => {
                    let supported = self.supported_extensions();
                    if !supported.mul {
                        self.unsupported_cmd()?;
                    } else {
                        crate::__dead_code_marker!("Mul extension");
                        let result = self.target.mul(Some(MulArgs { n: *n }));
                        self.handle_result(result)?;
                    }
                }
            },

            /* ScaleFactor nested extension */
            Command::MulScaleFactor(scale_factor_cmd) => match scale_factor_cmd {
                ext::MulScaleFactorCommand::ScaleFactor(factor) => {
                    let supported = self.supported_extensions();
                    if !supported.scale_factor {
                        self.unsupported_cmd()?;
                    } else {
                        crate::__dead_code_marker!("ScaleFactor extension");
                        let result = self
                            .target
                            .scale_factor(Some(ScaleFactorArgs { factor: *factor }));
                        self.handle_result(result)?;
                    }
                }
            },
        }

        Ok(())
    }

    fn handle_result(&self, result: Option<Result<(), T::Error>>) -> Result<(), Error<T::Error>> {
        match result {
            Some(result) => result.map_err(Error::Target),
            None => self.unsupported_cmd(),
        }
    }
}
