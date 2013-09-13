\name{export.list}
\alias{export.list}
\title{Exports to an environment}
\usage{
  export.list(arg.list, arg.names = names(arg.list),
    target.env = .GlobalEnv)
}
\arguments{
  \item{arg.list}{list of objects, possibly named.}

  \item{arg.names}{names to use for the items in the target
  environment. Use the names of \code{arg.list} by
  default.}

  \item{target.env}{The target environment.  Use the global
  environment by default.}
}
\value{
  Invisible \code{NULL}.
}
\description{
  This function is a wrapper around \code{\link{assign}}
  that exports the contents of a named list to an
  environment.  The variable names in the target
  environment are constructed from the names of the list
  items or taken from a separate argument.
}
\examples{
export.list(list(newly.created.var=5))
newly.created.var
rm(newly.created.var)
}
\author{
  Roland
}
\references{
  \url{http://stackoverflow.com/a/17484932/946850}
}
\seealso{
  \link{export}, \link{assign}
}

