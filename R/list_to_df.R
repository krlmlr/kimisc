#' Converts a list to a name-value data frame
#'
#' This function coerces its input to a list and returns a data frame with as many
#' rows as there are list items in the input, and two columns
#' (one for the names, one for the values). If the list is not named, the
#' natural sequence will be used as item names.
#'
#' @param list_for_df The object to be converted to a data frame
#'
#' @export
list_to_df <- function(list_for_df) {
  list_for_df <- as.list(list_for_df)

  nm <- names(list_for_df)
  if (is.null(nm))
    nm <- seq_along(list_for_df)

  df <- data.frame(name = nm, stringsAsFactors = FALSE)
  df$value <- unname(list_for_df)
  df
}
