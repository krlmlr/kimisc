#' @title Constructs a list, ignoring an empty last argument
#' @description This function is a list constructor that tolerates a comma after
#'   the last list element. Helps constructing lists where more and more
#'   elements are appended with time: No need to think about a terminal comma
#'   anymore, just like in Python, C++, ...
#' @param ... objects, possibly named.
#' @return A list.
#' @seealso \link{tc}, \link{list}
#' @examples
#' tlist()
#' tlist(1, 2, 3)
#' tlist(a=1, 2, c=3, )
#' @export
tlist <- function(...) {
  l <- match.call()[-1]
  ll <- length(l)
  if (ll == 0) {
    list()
  } else if (l[ll] == "()") {
    do.call(list, as.list(l[-ll]))
  } else {
    do.call(list, as.list(l))
  }
}

#' @title Constructs a vector, ignoring an empty last argument
#' @description This function is a vector constructor that tolerates a comma
#'   after the last list element. Helps constructing vectors where more and more
#'   elements are appended with time: No need to think about a terminal comma
#'   anymore, just like in Python, C++, ...
#' @param ... objects, possibly named.
#' @return A vector.
#' @seealso \link{tc}, \link{c}
#' @examples
#' tc()
#' tc(1L, 2L, 3)
#' tc(a=1, 2, c=3, )
#' @export
tc <- function(...) {
  l <- match.call()[-1]
  ll <- length(l)
  if (ll == 0) {
    c()
  } else if (l[ll] == "()") {
    do.call(c, as.list(l[-ll]))
  } else {
    do.call(c, as.list(l))
  }
}
