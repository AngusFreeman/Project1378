#' Full T-Test
#'
#' @param dataset The data set you wish to test
#' @description Provides a full t-test, with hypotheses, assumptions, a decision and a conclusion.
#'
#' @return
#' @export
#'
#' @examples myttest(project)
myttest <- function(dataset) {
  cat("Step 1: Stating the test hypotheses.", sep = "\n")
  thypothesis(dataset)

  #cat("", "Step 2: Graphing the assumptions.", sep = "\n")
  # tassumptions(dataset)

  cat("", "Step 3: Gathering relevent data using the t.test() function, which is summarised in the list below.", "", sep = "\n")
  print(tfit(dataset))

  cat("", "Step 4: Deciding the test result.", sep = "\n")
  tdecision(dataset)

  cat("", "Step 5: Concluding the test.", sep = "\n")
  tconclusion(dataset)
}
