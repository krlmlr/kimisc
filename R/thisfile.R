#' @title Determines the path of the currently running script
#' @description \R does not store nor export the path of the currently running
#'   script.  This is an attempt to circumvent this limitation by applying
#'   heuristics (such as call stack and argument inspection) that work in many
#'   cases.
#' @details This function currently works only if the script was \code{source}d
#'   or run with \code{Rscript} or using the \code{--file} parameter to the
#'   \code{R} executable.  For code run with \code{Rscript}, the exact value
#'   of the parameter passed to \code{Rscript} is returned.
#' @return The path of the currently running script, NULL if it cannot be
#'   determined.
#' @seealso \link[base]{source}, \link[utils]{Rscript}, \link[base]{getwd}
#' @references \url{http://stackoverflow.com/q/1815606/946850}
#' @author Kirill Müller, Hadley Wickham, Michael R. Head
#' @examples
#' \dontrun{thisfile()}
#' @export
thisfile <- function() {
  if (!is.null(res <- thisfile_source())) res
  else if (!is.null(res <- thisfile_rscript())) res
  else NULL
}

# Helper functions
thisfile_source <- function() {
  for (i in -(1:sys.nframe())) {
    if (identical(sys.function(i), base::source))
      return (normalizePath(sys.frame(i)$ofile))
  }

  NULL
}

thisfile_rscript <- function() {
  cmdArgs <- commandArgs(trailingOnly = FALSE)
  cmdArgsTrailing <- commandArgs(trailingOnly = TRUE)
  cmdArgs <- cmdArgs[seq.int(from=1, length.out=length(cmdArgs) - length(cmdArgsTrailing))]
  res <- gsub("^(?:--file=(.*)|.*)$", "\\1", cmdArgs)

  # If multiple --file arguments are given, R uses the last one
  res <- tail(res[res != ""], 1)
  if (length(res) > 0)
    return (res)

  NULL
}
