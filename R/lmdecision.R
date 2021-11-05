#' Lm decision
#'
#' @param dataset The data set you are testing
#' @description Chooses whether or not to reject the null hypothesis based upon the p-value of the linear model test.
#'
#' @return A decision for the linear model test.
#' @export
#'
#' @examples lmdecision(project)
lmdecision <- function(dataset) {
  if(lmfit(dataset)[4] < 0.05) {
    print("Decision: Reject null hypothesis")
  } else {
    print("Decision: Do not reject null hypothesis")
  }
}
