\name{tc}
\alias{tc}
\title{Constructs a vector, ignoring an empty last argument}
\usage{
  tc(...)
}
\arguments{
  \item{...}{objects, possibly named.}
}
\value{
  A vector.
}
\description{
  This function is a vector constructor that tolerates a
  comma after the last list element. Helps constructing
  vectors where more and more elements are appended with
  time: No need to think about a terminal comma anymore,
  just like in Python, C++, ...
}
\examples{
tc()
tc(1L, 2L, 3)
tc(a=1, 2, c=3, )
}
\seealso{
  \link{tc}, \link{c}
}

