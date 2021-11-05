#' T Hypotheses
#'
#' @param dataset The data set you are testing
#' @description Prints the null and alternative hypotheses for the t-test.
#'
#' @return Hypotheses for the t-test.
#' @export
#'
#' @examples thypothesis(project)
thypothesis <- function(dataset) {
  cat("H0 -> There is no difference in the average height between genders",
      "H1 -> There is a difference in the average height between genders", sep = "\n")
}
