#' Full Chiq Test
#'
#' @param dataset The data set you wish to test
#' @description Provides a full chi squared test, with hypotheses, assumptions, a decision and a conclusion.
#'
#' @return
#' @export
#'
#' @examples
mychitest <- function(dataset) {
  cat("Step 1: Stating the test hypotheses.", sep = "\n")
  chihypothesis(dataset)

  cat("", "Step 2: Stating the assumptions.", sep = "\n")
  chiassumptions(dataset)

  cat("", "Step 3: Gathering relevent data using the chisq.test function, which is summarised in the list below.", "", sep = "\n")
  print(chifit(dataset))

  cat("", "Step 4: Deciding the test result.", sep = "\n")
  chidecision(dataset)

  cat("", "Step 5: Concluding the test.", sep = "\n")
  chiconclusion(dataset)
}
