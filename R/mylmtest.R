#' Full Lm Test
#'
#' @param dataset The data set you wish to test
#' @description Provides a full linear model test, with hypotheses, assumptions, a decision and a conclusion.
#'
#' @return Full Linear Model test report.
#' @export
#'
#' @examples mylmtest(project)
mylmtest <- function(dataset) {
  cat("Step 1: Stating the test hypotheses.", sep = "\n")
  lmhypothesis(dataset)

  cat("", "Step 2: Graphing the assumptions.", sep = "\n")
  lmassumptions(dataset)

  cat("", "Step 3: Gathering relevent data using the lm() function, which is summarised in the list below.", "", sep = "\n")
  print(lmfit(dataset))

  cat("", "Step 4: Deciding the test result.", sep = "\n")
  lmdecision(dataset)

  cat("", "Step 5: Concluding the test.", sep = "\n")
  lmconclusion(dataset)
}
