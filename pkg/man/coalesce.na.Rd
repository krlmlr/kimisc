\name{coalesce.na}
\alias{coalesce.na}
\title{Replaces NA values}
\usage{
  coalesce.na(x, ...)
}
\arguments{
  \item{x}{The first value to coalesce.}

  \item{...}{Other values to coalesce.}
}
\value{
  A vector of the same length as \code{x}.
}
\description{
  This (vectorized) function returns the first
  non-\code{NA} argument, similar to the SQL function
  \code{COALESCE}. If a vector or matrix is passed as first
  argument, the remaining arguments are recycled to
  generate a vector/matrix of the same dimension, and
  coalescing is done element by element.
}
\examples{
coalesce.na(NA, -1)
coalesce.na(5, 3)
coalesce.na(c(1,NA,NA), c(NA,2))
coalesce.na(matrix(c(NA, 1:3), nrow=2))
coalesce.na(NA)
}

