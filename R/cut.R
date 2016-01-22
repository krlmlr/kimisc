#' Convert Numeric to Factor, with custom formatting
#'
#' This is an enhanced version of \code{\link[base]{cut}} that allows a custom
#' formatting to be applied to the values.
#'
#' @inheritParams base::cut.default
#' @param ... Passed to \code{cut}
#' @param format_fun \code{[function(x): character]}\cr
#'   A vectorized function that performs the desired formatting.  Default:
#'   \code{\link[base]{format}}
#' @param sep \code{[character(1)]}\cr
#'   The separator between lower and upper end of the interval. Default:
#'   \code{", "}
#' @seealso \url{http://stackoverflow.com/q/14456371/946850}
#'
#' @export
#' @importFrom utils head tail
cut_format <- function(x, breaks, include.lowest = FALSE, right = TRUE,
                       ordered_result = FALSE, ...,
                       format_fun = format, sep = ", ") {
  if (right) {
    ob <- c(include.lowest, rep(FALSE, length(breaks) - 2L))
    cb <- rep(TRUE, length(breaks) - 1L)
  } else {
    ob <- rep(TRUE, length(breaks) - 1L)
    cb <- c(rep(FALSE, length(breaks) - 2L), include.lowest)
  }

  ob <- ifelse(ob, "[", "(")
  cb <- ifelse(cb, "]", ")")

  formatted_breaks <- format_fun(breaks)
  labels <- paste0(ob, head(formatted_breaks, -1L), sep, tail(formatted_breaks, -1L), cb)
  cut.default(x = x, breaks = breaks, labels = labels, include.lowest = include.lowest,
              right = right, ordered_result = ordered_result, ...)
}
