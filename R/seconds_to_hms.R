#' @title Converts a time value given as number of seconds since midnight to the
#'   H:M:S format
#' @description This function is very similar to `strftime` with the
#'   \code{\%X} conversion specification. Hour values larger than 24 are
#'   permitted. Fractions will be rounded down to the next integer. Non-numeric
#'   values are coerced to `NA` with a warning.
#' @param x A (vector of) numbers.
#' @return A (vector of) character values of the same length as `x`.
#' @seealso [base::strftime()]
#' @examples
#' seconds.to.hms(c(1, 60, 3600.5))
#' seconds.to.hms(c(100000, -4000.5))
#' seconds.to.hms("invalid")
#' @export
#' @family deprecated functions
#' @name seconds.to.hms-deprecated
#' @keywords internal
seconds.to.hms <- function(x) {
  deprecate("hms::as.character()")
  if (!is.integer(x)) {
    x <- as.integer(floor(as.numeric(x)))
  }

  hours <- as.integer(trunc(x / 3600))
  x <- x - hours * 3600L
  stopifnot(is.integer(x))
  minutes <- as.integer(trunc(x / 60))
  seconds <- x - minutes * 60L
  stopifnot(is.integer(seconds))
  ret <- sprintf("%.2d:%.2d:%.2d", hours, abs(minutes), abs(seconds))
  ret[is.na(x)] <- NA
  ret
}
