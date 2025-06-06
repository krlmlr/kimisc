% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vswitch.R
\name{vswitch-deprecated}
\alias{vswitch-deprecated}
\alias{vswitch}
\title{Vectorized switch}
\usage{
vswitch(EXPR, ...)
}
\arguments{
\item{EXPR}{an expression evaluating to a number or a character
    string.}

\item{...}{the list of alternatives.  If it is intended that
    \code{EXPR} has a character-string value these will be
    named, perhaps except for one alternative to be used as a
    \sQuote{default} value.}
}
\value{
The value of one of the elements of \code{...},
or \code{NA} whenever no element is selected.
Contrary to \code{\link[base:switch]{base::switch()}} the result is
always visible.
}
\description{
The function \code{vswitch} is a vectorized version of
\code{\link[base:switch]{base::switch()}} optimized for performance.
}
\details{
Only the \code{EXPR} argument is treated as a vector. In particular,
if any of the alternatives (or the default alternative) is a vector, the
result will be a list of vectors.
}
\seealso{
Other deprecated functions: 
\code{\link{coalesce.na-deprecated}},
\code{\link{df_to_list-deprecated}},
\code{\link{hms.to.seconds-deprecated}},
\code{\link{kimisc-deprecated}},
\code{\link{list_to_df-deprecated}},
\code{\link{nc-deprecated}},
\code{\link{nlist-deprecated}},
\code{\link{ofactor-deprecated}},
\code{\link{sample.rows-deprecated}},
\code{\link{seconds.to.hms-deprecated}},
\code{\link{thisfile-deprecated}},
\code{\link{tll-deprecated}}
}
\concept{deprecated functions}
\keyword{internal}
