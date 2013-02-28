#' @exportPattern "^[[:alpha:]]+"

#' @title Checks if values are contained in an interval (open to the 
#'   right)
#' @description This function checks if the values in the \code{x}
#'   parameter are contained in the interval [\code{lo}, \code{hi}).
#'   \code{NA} values are treated as "not in the interval".
#' @param x A vector of values.
#' @param lo Left end of the interval.
#' @param hi Right end of the interval.
#' @return A vector of the same length as \code{x}.
#' @examples
#' in.interval.ro(c(-1, 0, 1, 2), 0, 1)
#' in.interval.ro(NA, 1, 3)
in.interval.ro <- function(x, lo, hi) !is.na(.bincode(x, c(lo, hi), right=FALSE))
