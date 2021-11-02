#' Chi Hypotheses
#'
#' @param dataset The data set you are testing
#' @description Prints the null and alternative hypotheses for the Chi Squared test.
#'
#' @return
#' @export
#'
#' @examples chihypothesis(project_data)
chihypothesis <- function(dataset) {
  cat("H0 -> There is no association",
      "H1 -> There is association", sep = "\n")
}
chihypothesis(project_data)
