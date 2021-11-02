#' Chi Hypotheses
#'
#' @param dataset Choose the data set to use
#' @description Prints the test hypotheses for the Chi Squared test.
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
