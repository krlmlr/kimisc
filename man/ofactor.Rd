\name{ofactor}
\alias{ofactor}
\title{Order-preserving factors}
\usage{
ofactor(x = character(), exclude = NA, ordered = is.ordered(x),
  nmax = NA)
}
\arguments{
  \item{x}{a vector of data, usually taking a small number
  of distinct values.}

  \item{exclude}{a vector of values to be excluded when
  forming the set of levels.  This should be of the same
  type as \code{x}, and will be coerced if necessary.}

  \item{ordered}{logical flag to determine if the levels
  should be regarded as ordered (in the order given).}

  \item{nmax}{an upper bound on the number of levels; see
  \sQuote{Details}.}
}
\value{
A factor. See \link[base]{factor} for details.
}
\description{
The function \code{ofactor} is similar to \code{factor},
but orders the levels as they appear in the data
}
\examples{
ofactor(3:1)
ofactor(9:12, exclude=11)
}
\seealso{
\link[base]{factor}
}

