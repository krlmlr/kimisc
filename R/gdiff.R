#' Generalized lagged differences
#' 
#' Returns suitably lagged and iterated differences using arbitrary differce 
#' functions.
#' 
#' @param FUN A distance function that accepts two parameters
#' @param ... further arguments to be passed to or from methods.
#' @inheritParams base::diff
#' @return If x is a vector of length \code{n} and \code{differences = 1}, then 
#'   the computed result is equal to the successive differences 
#'   \code{FUN(x[(1+lag):n], x[1:(n-lag)])}.
#'   
#'   If \code{difference} is larger than one this algorithm is applied 
#'   recursively to \code{x}. Note that the returned value is a vector which is 
#'   shorter than \code{x}.
#'   
#'   If \code{x} is a matrix then the difference operations are carried out on each
#'   column separately.
#' @seealso \link[base]{diff}
#' @examples
#' gdiff(1:4)
#' gdiff(1:4, FUN = `/`)
#' @export
gdiff <- function(x, lag = 1L, differences = 1L, FUN = `-`, ...) {
  ismat <- is.matrix(x)
  xlen <- if (ismat) 
    dim(x)[1L]
  else length(x)
  if (length(lag) > 1L || length(differences) > 1L || lag < 
        1L || differences < 1L) 
    stop("'lag' and 'differences' must be integers >= 1")
  if (lag * differences >= xlen) 
    return(x[0L])
  r <- unclass(x)
  i1 <- -seq_len(lag)
  if (ismat) 
    for (i in seq_len(differences))
      r <- FUN(r[i1, , drop = FALSE], r[-nrow(r):-(nrow(r) - lag + 1L), , drop = FALSE])
  else
    for (i in seq_len(differences))
      r <- FUN(r[i1], r[-length(r):-(length(r) - lag + 1L)])
  class(r) <- oldClass(x)
  r
}
