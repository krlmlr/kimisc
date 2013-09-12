\name{sample.rows}
\alias{sample.rows}
\title{Random Samples and Permutations for Data Frames}
\usage{
  sample.rows(x, size, replace = FALSE, prob = NULL)
}
\arguments{
  \item{x}{A data frame.}

  \item{size}{A non-negative integer giving the number of
  items to choose.}

  \item{replace}{Should sampling be with replacement?}

  \item{prob}{A vector of probability weights for obtaining
  the rows of the data frame being sampled.}
}
\value{
  A data frame of the same shape as \code{x}.
}
\description{
  This function takes a sample of the specified size from
  the rows of \code{x} using either with or without
  replacement.
}
\details{
  This function internally calls \code{\link{sample.int}}.
}
\examples{
set.seed(42)
sample.rows(data.frame(a=c(1,2,3), b=c(4,5,6), row.names=c('a', 'b', 'c')), 10, replace=TRUE)
}

