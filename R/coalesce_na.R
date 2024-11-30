#' @title Replaces NA values
#' @description This (vectorized) function returns the first
#'   non-`NA` argument, similar to the SQL function
#'   `COALESCE`. If a vector or matrix is passed as first argument,
#'   the remaining arguments are recycled to generate a vector/matrix of
#'   the same dimension, and coalescing is done element by element.
#' @param x The first value to coalesce.
#' @param ... Other values to coalesce.
#' @return A vector of the same length as `x`.
#' @examples
#' coalesce.na(NA, -1)
#' coalesce.na(5, 3)
#' coalesce.na(c(1, NA, NA), c(NA, 2))
#' coalesce.na(matrix(c(NA, 1:3), nrow = 2))
#' coalesce.na(NA)
#' @export
#' @family deprecated functions
#' @name coalesce.na-deprecated
coalesce.na <- function(x, ...) {
  deprecate("dplyr::coalesce")
  x.len <- length(x)
  ly <- list(...)
  for (y in ly) {
    y.len <- length(y)
    if (y.len == 1) {
      x[is.na(x)] <- y
    } else {
      if (x.len %% y.len != 0)
        warning("object length is not a multiple of first object length")
      pos <- which(is.na(x))
      ypos <- (pos - 1) %% y.len + 1
      x[pos] <- y[ypos]
    }
  }
  x
}
