#' @title Smart named list
#' @description This function is a wrapper around \code{\link{list}} that
#'   assigns names to unnamed arguments based on the unevaluated expression used
#'   in the call.
#' @param ... List items, possibly named
#' @return A named list.
#' @seealso \link{list}
#' @examples
#' a <- 1; b <- 2; c <- 3
#' nlist(a, b, d=c)
#' nlist(mean(c(a, b, c)))
#' @export
#' @author Hadley Wickham
#' @references \url{http://stackoverflow.com/a/5043280/946850},
#'   \url{http://tolstoy.newcastle.edu.au/R/e9/help/10/03/8392.html}
nlist <- function(...) {
  vals <- list(...)
  
  if (is.null(names(vals))) {
    missing_names <- rep(TRUE, length(vals))
  } else {
    missing_names <- names(vals) == ""
  }
  if (any(missing_names)) {
    names <- vapply(substitute(list(...))[-1], deparse, character(1))
    names(vals)[missing_names] <- names[missing_names]
  }
  
  vals
}
