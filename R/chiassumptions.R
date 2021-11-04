#' Chi Assumptions
#'
#' @param dataset The data set you are testing
#' @description Prints the assumptions for the Chi Squared test.
#'
#' @return
#' @export
#'
#' @examples chiassumptions(project)
chiassumptions <- function(dataset) {
  cat("1. Both Variables are categorical",
      "2. All observations are independent",
      "3. The categories of variables are mutually exclusive",
      "4. The expected value of cells should be 5 or greater in at least 80% of cells", "", "Data table:", sep = "\n")
  print(table(dataset$gender, dataset$phys))
  cat("","Expected value table:", "", sep = "\n")
  print(chisq.test(dataset$gender, dataset$phys, correct = FALSE)$expected)

}
