\name{NEWS}
\title{News for Package 'kimisc'}
\encoding{UTF-8}
\section{Changes in kimisc version 0.2-1 (2014-04-02)}{
  \itemize{
    \item Function \code{ofactor} now uses \code{...} instead of explicit argument list (making it
      compatible to R 2.15.3 and future versions of R), and accepts \code{levels}
      argument (works like \code{factor} then)
  }
}
\section{Changes in kimisc version 0.2 (2014-03-20)}{
  \itemize{
    \item Cleanup for CRAN release
  }
}
\section{Changes in kimisc version 0.1.7}{
  \itemize{
    \item New function \code{thisfile}: Returns a guess for the path of the currently
      executed script
    \item Removed all dependencies to Rcpp
  }
}
\section{Changes in kimisc version 0.1.6}{
  \itemize{
    \item Removed useless Rcpp "Hello World" code
    \item New function \code{ofactor}: Creates a factor that maintains the order of levels
      in the data
  }
}
\section{Changes in kimisc version 0.1.5}{
  \itemize{
    \item Remove functions \code{tc} and \code{tlist}, they're now part of the sweetnR package
    \item New function \code{tll}: Transposes a list of lists
  }
}
\section{Changes in kimisc version 0.1.4}{
  \itemize{
    \item Added functions:
    \item \code{sample.rows}
    \item \code{hms.to.seconds} and \code{seconds.to.hms}
    \item \code{in_interval}
    \item \code{nlist}
    \item \code{coalesce.na}
    \item \code{export}
  }
}
