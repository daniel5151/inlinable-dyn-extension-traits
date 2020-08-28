#[derive(Debug, Clone)]
enum MaybeUnimplInner<E> {
    NoImpl,
    Error(E),
}

/// Wraps an error type with an additional "unimplemented" state. Can only be
/// constructed via `.into()` or the `?` operator.
#[derive(Debug, Clone)]
pub struct MaybeUnimpl<E>(MaybeUnimplInner<E>);

impl<E> MaybeUnimpl<E> {
    pub(crate) fn unimplemented() -> MaybeUnimpl<E> {
        MaybeUnimpl(MaybeUnimplInner::NoImpl)
    }
}

impl<T> From<T> for MaybeUnimpl<T> {
    fn from(e: T) -> Self {
        MaybeUnimpl(MaybeUnimplInner::Error(e))
    }
}

/// A result type which includes an "unimplemented" state.
///
/// `OptResult<T, E>` should be indistinguishable from `Result<T, E>`, aside
/// from the small caveat of having to use `.into()` when returning `Err`
/// variants (i.e: `return Err(foo)` will fail to compile).
pub type OptResult<T, E> = Result<T, MaybeUnimpl<E>>;

/// Makes working with OptResult easier.
pub(crate) trait OptResultExt<T, E> {
    /// If the `OptResult` is unimplemented, return `Ok(None)`. Otherwise,
    /// return `Ok(Some(T))` or `Err(E)`.
    fn map_unimpl(self) -> Result<Option<T>, E>;
    fn unimplemented() -> MaybeUnimpl<E> {
        MaybeUnimpl(MaybeUnimplInner::NoImpl)
    }
}

impl<T, E> OptResultExt<T, E> for OptResult<T, E> {
    fn map_unimpl(self) -> Result<Option<T>, E> {
        match self {
            Ok(t) => Ok(Some(t)),
            Err(MaybeUnimpl(MaybeUnimplInner::NoImpl)) => Ok(None),
            Err(MaybeUnimpl(MaybeUnimplInner::Error(e))) => Err(e),
        }
    }
}
