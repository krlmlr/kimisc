#' @title Determines the path of the currently running script
#' @description \R does not store nor export the path of the currently running
#'   script.  This is an attempt to circumvent this limitation by applying
#'   heuristics (such as call stack and argument inspection) that work in many
#'   cases.
#' @details This functions currently work only if the script was `source`d,
#'   processed with `knitr`,
#'   or run with `Rscript` or using the `--file` parameter to the
#'   `R` executable.  For code run with `Rscript`, the exact value
#'   of the parameter passed to `Rscript` is returned.
#' @return The path of the currently running script, NULL if it cannot be
#'   determined.
#' @seealso [base::source()], [utils::Rscript()], [base::getwd()]
#' @references [https://stackoverflow.com/q/1815606/946850]()
#' @author Kirill Müller, Hadley Wickham, Michael R. Head
#' @examples
#' \dontrun{
#' thisfile()
#' }
#' @export
#' @family deprecated functions
#' @name thisfile-deprecated
#' @keywords internal
thisfile <- function() {
  deprecate("rprojroot::thisfile")
  if (!is.null(res <- thisfile_source())) {
    res
  } else if (!is.null(res <- thisfile_r())) {
    res
  } else if (!is.null(res <- thisfile_rscript())) {
    res
  } else if (!is.null(res <- thisfile_knit())) {
    res
  } else {
    NULL
  }
}

#' @rdname thisfile-deprecated
#' @export
thisfile_source <- function() {
  deprecate("rprojroot::thisfile_source")
  for (i in -(1:sys.nframe())) {
    if (identical(args(sys.function(i)), args(base::source))) {
      return(normalizePath(sys.frame(i)$ofile))
    }
  }

  NULL
}

#' @rdname thisfile-deprecated
#' @export
thisfile_r <- function() {
  deprecate("rprojroot::thisfile_r")
  cmd_args <- commandArgs(trailingOnly = FALSE)
  if (!grepl("^R(?:|[.]exe)$", basename(cmd_args[[1L]]), ignore.case = TRUE)) {
    return(NULL)
  }

  cmd_args_trailing <- commandArgs(trailingOnly = TRUE)
  leading_idx <-
    seq.int(from = 1, length.out = length(cmd_args) - length(cmd_args_trailing))
  cmd_args <- cmd_args[leading_idx]
  file_idx <- c(which(cmd_args == "-f") + 1, which(grepl("^--file=", cmd_args)))
  res <- gsub("^(?:|--file=)(.*)$", "\\1", cmd_args[file_idx])

  # If multiple --file arguments are given, R uses the last one
  res <- tail(res[res != ""], 1)
  if (length(res) > 0) {
    return(res)
  }

  NULL
}

#' @rdname thisfile-deprecated
#' @export
thisfile_rscript <- function() {
  deprecate("rprojroot::thisfile_rscript")
  cmd_args <- commandArgs(trailingOnly = FALSE)
  if (!grepl("^Rscript(?:|[.]exe)$", basename(cmd_args[[1L]]), ignore.case = TRUE)) {
    return(NULL)
  }

  cmd_args_trailing <- commandArgs(trailingOnly = TRUE)
  leading_idx <-
    seq.int(from = 1, length.out = length(cmd_args) - length(cmd_args_trailing))
  cmd_args <- cmd_args[leading_idx]
  res <- gsub("^(?:--file=(.*)|.*)$", "\\1", cmd_args)

  # If multiple --file arguments are given, R uses the last one
  res <- tail(res[res != ""], 1)
  if (length(res) > 0) {
    return(res)
  }

  NULL
}

#' @rdname thisfile-deprecated
#' @export
thisfile_knit <- function() {
  deprecate("rprojroot::thisfile_knit")
  if (requireNamespace("knitr")) {
    return(knitr::current_input())
  }

  NULL
}
