#' @title Replaces NA values
#' @description This (vectorized) function returns the first 
#'   non-\code{NA} argument, similar to the SQL function
#'   \code{COALESCE}. If a vector is passed as first argument, the
#'   remaining arguments are recycled to generate a vector of the same
#'   length, and coalescing is done element by element.
#' @param x The first value to coalesce.
#' @param ... Other values to coalesce.
#' @param replace Replacement to apply if still \code{NA}.
#' @return A vector of the same length as \code{x}.
#' @examples
#' coalesce.na(NA, replace=-1)
#' coalesce.na(5, 3)
#' coalesce.na(c(1,NA,NA), c(NA,2))
#' @export
coalesce.na <- function(x, ..., replace=0) {
  x.len <- length(x)
  ly <- c(list(...), replace)
  for (y in ly) {
    y.len <- length(y)
    if (y.len == 1) {
      x[is.na(x)] <- y
    } else {
      if (x.len %% y.len != 0)
        warning('object length is not a multiple of first object length')
      pos <- which(is.na(x))
      x[pos] <- y[(pos - 1) %% y.len + 1]
    }
  }
  x
}
