#' Vectorized switch
#'
#' The function `vswitch` is a vectorized version of
#'   [base::switch()] optimized for performance.
#'
#' Only the `EXPR` argument is treated as a vector. In particular,
#' if any of the alternatives (or the default alternative) is a vector, the
#' result will be a list of vectors.
#'
#' @inheritParams base::switch
#' @return The value of one of the elements of `...`,
#'   or `NA` whenever no element is selected.
#'   Contrary to [base::switch()] the result is
#'   always visible.
#'
#' @export
#' @family deprecated functions
#' @name vswitch-deprecated
#' @keywords internal
vswitch <- function(EXPR, ...) {
  deprecate("dplyr::recode")
  UseMethod("vswitch", EXPR)
}

#' @export
vswitch.default <- function(EXPR, ...) {
  stop("EXPR must be a character")
}

#' @export
vswitch.character <- function(EXPR, ...) {
  values <- pryr::dots(...)
  nvalues <- names(values)
  if (is.null(nvalues)) nvalues <- rep("", length(values))
  named <- nvalues != ""
  unnamed_i <- which(!named)
  if (length(unnamed_i) > 1) {
    stop("At most one argument can be unnamed")
  }

  default <- if (length(unnamed_i) == 0) list(NA) else values[[unnamed_i]]
  tbl <- c(unname(values[named]), default)
  idx <- match(x = EXPR, table = nvalues[named], nomatch = length(tbl))
  idxu <- unique(idx)

  tblv <- sapply(tbl[idxu], eval)
  rev_idxu <- integer(length(tbl))
  rev_idxu[idxu] <- seq_along(idxu)

  tblv[rev_idxu[idx]]
}
