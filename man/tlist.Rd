\name{tlist}
\alias{tlist}
\title{Constructs a list, ignoring an empty last argument}
\usage{
  tlist(...)
}
\arguments{
  \item{...}{objects, possibly named.}
}
\value{
  A list.
}
\description{
  This function is a list constructor that tolerates a
  comma after the last list element. Helps constructing
  lists where more and more elements are appended with
  time: No need to think about a terminal comma anymore,
  just like in Python, C++, ...
}
\examples{
tlist()
tlist(1, 2, 3)
tlist(a=1, 2, c=3, )
}
\seealso{
  \link{tc}, \link{list}
}

