#' T decision
#'
#' @param dataset The data set you are testing
#' @description Chooses whether or not to reject the null hypothesis based upon the p-value of the t-test.
#'
#' @return Decision for the t-test.
#' @export
#'
#' @examples tdecision(project)
tdecision <- function(dataset) {
  if(tfit(dataset)[[3]] < 0.05) {
    print("Decision: Reject null hypothesis")
  } else {
    print("Decision: Do not reject null hypothesis")
  }
}
