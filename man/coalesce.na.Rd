\name{coalesce.na}
\alias{coalesce.na}
\title{Replaces NA values}
\usage{
  coalesce.na(x, ..., replace = 0)
}
\arguments{
  \item{x}{The first value to coalesce.}

  \item{...}{Other values to coalesce.}

  \item{replace}{Replacement to apply if still \code{NA}.}
}
\value{
  A vector of the same length as \code{x}.
}
\description{
  This (vectorized) function returns the first
  non-\code{NA} argument, similar to the SQL function
  \code{COALESCE}. If a vector is passed as first argument,
  the remaining arguments are recycled to generate a vector
  of the same length, and coalescing is done element by
  element.
}
\examples{
coalesce.na(NA, replace=-1)
coalesce.na(5, 3)
coalesce.na(c(1,NA,NA), c(NA,2))
}

