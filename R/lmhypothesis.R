#' Lm Hypotheses
#'
#' @param dataset The data set you are testing
#' @description Prints the null and alternative hypotheses for the linear model test.
#'
#' @return
#' @export
#'
#' @examples lmhypothesis(project)
lmhypothesis <- function(dataset) {
  cat("H0 -> Beta = 0",
      "H1 -> Beta != 0", sep = "\n")
}
