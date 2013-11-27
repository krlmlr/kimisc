\name{ofactor}
\alias{ofactor}
\title{Order-preserving factors}
\usage{
ofactor(x = character(), exclude = NA, ordered = is.ordered(x),
  nmax = NA)
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

