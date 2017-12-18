#' Deprecated functions
#'
#' The "See also" section contains the deprecated functions in this package.
#' @family deprecated functions
#' @name kimisc-deprecated
NULL

#' @importFrom memoise memoise
deprecate <- memoise(function(new, old = as.character(sys.call(sys.parent()))[1L]) {
  message("`", old, "()` is deprecated, use `", new, "()` instead.")
})
