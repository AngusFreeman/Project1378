#' Chi Hypotheses
#'
#' @param dataset The data set you are testing
#' @description Prints the null and alternative hypotheses for the Chi Squared test.
#'
#' @return The hypothesis for the Chi Squared test.
#' @export
#'
#' @examples chihypothesis(project)
chihypothesis <- function(dataset) {
  cat("H0 -> There is no association",
      "H1 -> There is association", sep = "\n")
}
