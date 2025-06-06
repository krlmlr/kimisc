#' @title Converts a time value given in H:M:S format to the number of seconds
#'   since midnight
#' @description This function is very similar to `strptime` with the
#'   \code{\%X} conversion specification. Anything with three numbers between
#'   two colons is interpreted as a time, no consistency check is performed on
#'   the actual hour, minute and second values. Thus, strings like 25:15:00 and
#'   23:78:101 also will be converted. Incorrectly formatted strings are
#'   converted to `NA` with a warning.
#' @param x A (vector of) strings in H:M:S format.
#' @return A (vector of) integer values of the same length as `x`.
#' @seealso [base::strptime()]
#' @examples
#' hms.to.seconds(c("00:00:01", "00:01:00", "01:00:00"))
#' hms.to.seconds(c("25:15:00", "23:78:101"))
#' hms.to.seconds("invalid")
#' @export
#' @family deprecated functions
#' @name hms.to.seconds-deprecated
#' @keywords internal
hms.to.seconds <- function(x) {
  deprecate("hms::parse_hms")
  re <- "^([0-9]+):([0-9]+):([0-9]+)|.*$"
  hours <- as.integer(gsub(re, "\\1", x))
  minutes <- as.integer(gsub(re, "\\2", x))
  seconds <- as.integer(gsub(re, "\\3", x))
  res <- hours * 3600 + minutes * 60 + seconds
  if (any(is.na(res))) {
    warning("NAs introduced by coercion")
  }
  res
}
