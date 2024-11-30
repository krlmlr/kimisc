#' @title Smart named list
#' @description This function is a wrapper around [list()] that
#'   assigns names to unnamed arguments based on the unevaluated expression used
#'   in the call.
#' @param ... List items, possibly named
#' @return A named list.
#' @seealso [list()]
#' @examples
#' a <- 1
#' b <- 2
#' c <- 3
#' nlist(a, b, d = c)
#' nlist(mean(c(a, b, c)))
#' @export
#' @author Hadley Wickham
#' @references [https://stackoverflow.com/a/5043280/946850]()
#' @family deprecated functions
#' @name nlist-deprecated
nlist <- function(...) {
  deprecate("tibble::lst")
  .nworker(list(...), substitute(list(...))[-1])
}

#' @title Smart named vector
#' @description This function is a wrapper around [c()] that
#'   assigns names to unnamed arguments based on the unevaluated expression used
#'   in the call.
#' @param ... Vector elements, possibly named
#' @return A named vector.
#' @seealso [c()], [nlist()]
#' @examples
#' a <- 1
#' b <- 2
#' c <- 3
#' nc(a, b, d = c)
#' nc(mean(c(a, b, c)))
#' @export
#' @author Hadley Wickham
#' @references [https://stackoverflow.com/a/5043280/946850]()
#' @family deprecated functions
#' @name nc-deprecated
nc <- function(...) {
  deprecate("tibble::lst")
  .nworker(c(...), substitute(list(...))[-1])
}

# @title Set the Missing Names in an Object
# @description This function is an enhanced version of [setNames()]
#   in the sense that the elements that already have names are not renamed.
# @param object an object for which a names attribute will be meaningful
# @param nm a character vector of names to assign to the object
# @return An object of the same sort as `object` with the new names
#   assigned to the unnamed elements.
# @seealso \link{setNames}
# @examples
# setMissingNames(c(a=1, b=2, 3), letters[2:4])
# @export
# @author Hadley Wickham, Kirill Müller
# @references [https://stackoverflow.com/a/5043280/946850]()
setMissingNames <- function(object, nm) {
  if (is.null(names(object))) {
    missing_names <- rep(TRUE, length(object))
  } else {
    missing_names <- names(object) == ""
  }

  names(object)[missing_names] <- nm[missing_names]
  object
}

# Simple helper to avoid code duplication
.nworker <- function(object, expr) {
  setMissingNames(object, vapply(expr, deparse, character(1)))
}
