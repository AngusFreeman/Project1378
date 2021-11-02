#' Title
#'
#' @param dataset The data set you are testing
#' @description Chooses whether or not to reject the null hypothesis based upon the p-value of the chi squared test.
#'
#' @return
#' @export
#'
#' @examples
chidecision <- function(dataset) {
  if(chifit(dataset)[[3]] < 0.05) {
    print("Decision: Reject null hypothesis")
  } else {
    print("Decision: Do not reject null hypothesis")
  }
}
