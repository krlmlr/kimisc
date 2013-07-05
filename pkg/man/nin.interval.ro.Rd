\name{nin.interval.ro}
\alias{nin.interval.ro}
\title{Checks if values are outside of an interval (open on the
  right)}
\usage{
  nin.interval.ro(x, lo, hi)
}
\arguments{
  \item{x}{A vector of values. (Lists will be coerced to a
  numeric vector.)}

  \item{lo}{Left end of the interval.}

  \item{hi}{Right end of the interval.}
}
\value{
  A boolean vector of the same length as \code{x}.
}
\description{
  This function checks if the values in the \code{x}
  parameter are contained in the interval [\code{lo},
  \code{hi}).  \code{NA} values are treated as "not in the
  interval".
}
\examples{
nin.interval.ro(c(-1, 0, 1, 2), 0, 1)
nin.interval.ro(NA, 1, 3)
}
\seealso{
  \link{in.interval.lo}, \link{in.interval.ro},
  \link{nin.interval.lo}
}

