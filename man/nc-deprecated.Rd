% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nlist.R
\name{nc-deprecated}
\alias{nc-deprecated}
\alias{nc}
\title{Smart named vector}
\usage{
nc(...)
}
\arguments{
\item{...}{Vector elements, possibly named}
}
\value{
A named vector.
}
\description{
This function is a wrapper around \code{\link[=c]{c()}} that
assigns names to unnamed arguments based on the unevaluated expression used
in the call.
}
\examples{
a <- 1
b <- 2
c <- 3
nc(a, b, d = c)
nc(mean(c(a, b, c)))
}
\references{
\url{https://stackoverflow.com/a/5043280/946850}
}
\seealso{
\code{\link[=c]{c()}}, \code{\link[=nlist]{nlist()}}

Other deprecated functions: 
\code{\link{coalesce.na-deprecated}},
\code{\link{df_to_list-deprecated}},
\code{\link{hms.to.seconds-deprecated}},
\code{\link{kimisc-deprecated}},
\code{\link{list_to_df-deprecated}},
\code{\link{nlist-deprecated}},
\code{\link{ofactor-deprecated}},
\code{\link{sample.rows-deprecated}},
\code{\link{seconds.to.hms-deprecated}},
\code{\link{thisfile-deprecated}},
\code{\link{tll-deprecated}},
\code{\link{vswitch-deprecated}}
}
\author{
Hadley Wickham
}
\concept{deprecated functions}
\keyword{internal}
