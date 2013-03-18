\name{in.interval.ro}
\alias{in.interval.ro}
\title{Checks if values are contained in an interval (open on the
  right)}
\usage{
  in.interval.ro(x, lo, hi)
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
in.interval.ro(c(-1, 0, 1, 2), 0, 1)
in.interval.ro(NA, 1, 3)
}
\seealso{
  \link{in.interval.lo}, \link{nin.interval.lo},
  \link{nin.interval.ro}
}

