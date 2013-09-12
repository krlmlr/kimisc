\name{seconds.to.hms}
\alias{seconds.to.hms}
\title{Converts a time value given as number of seconds since midnight to the
  H:M:S format}
\usage{
  seconds.to.hms(x)
}
\arguments{
  \item{x}{A (vector of) numbers.}
}
\value{
  A (vector of) character values of the same length as
  \code{x}.
}
\description{
  This function is very similar to \code{strftime} with the
  \code{\%X} conversion specification. Hour values larger
  than 24 are permitted. Fractions will be rounded down to
  the next integer. Non-numeric values are coerced to
  \code{NA} with a warning.
}
\examples{
seconds.to.hms(c(1, 60, 3600.5))
seconds.to.hms(c(100000, -4000.5))
seconds.to.hms("invalid")
}
\seealso{
  \link[base]{strftime}
}

