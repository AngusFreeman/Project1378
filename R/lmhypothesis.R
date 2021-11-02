#' Lm Hypotheses
#'
#' @param dataset The data set you are testing
#' @description Prints the null and alternative hypotheses for the linear model test.
#'
#' @return
#' @export
#'
#' @examples
lmhypothesis <- function(dataset) {
  cat("H0 -> β = 0",
      "H1 -> β ≠ 0", sep = "\n")
}
