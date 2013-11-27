#' @title Order-preserving factors
#' @description The function \code{ofactor} is similar to \code{factor}, but
#'   orders the levels as they appear in the data
#' @inheritParams factor
#' @return A factor. See \link[base]{factor} for details.
#' @seealso \link[base]{factor}
#' @examples
#' ofactor(3:1)
#' ofactor(9:12, exclude=11)
#' @export
ofactor <- function(x = character(), exclude = NA, ordered = is.ordered(x),
                    nmax = NA) {
  x <- as.character(x)
  levels <- unique(x)
  factor(x, levels = levels, exclude = exclude, ordered = ordered, nmax = nmax)
}
