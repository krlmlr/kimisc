\name{nlist}
\alias{nlist}
\title{Smart named list}
\usage{
  nlist(...)
}
\arguments{
  \item{...}{List items, possibly named}
}
\value{
  A named list.
}
\description{
  This function is a wrapper around \code{\link{list}} that
  assigns names to unnamed arguments based on the
  unevaluated expression used in the call.
}
\examples{
a <- 1; b <- 2; c <- 3
nlist(a, b, d=c)
nlist(mean(c(a, b, c)))
}
\author{
  Hadley Wickham
}
\references{
  \url{http://stackoverflow.com/a/5043280/946850},
  \url{http://tolstoy.newcastle.edu.au/R/e9/help/10/03/8392.html}
}
\seealso{
  \link{list}
}

