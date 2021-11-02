#' Title
#'
#' @param chifit1 The list of output created by the chifit function
#' @description Chooses whether or not to reject the null hypothesis based upon the p-value of the chi squared test.
#'
#' @return
#' @export
#'
#' @examples
chidecision <- function(chifit1) {
  if(chifit1[[3]] < 0.05) {
    print("Decision: Reject null hypothesis")
  } else {
    print("Decision: Do not reject null hypothesis")
  }
}
chidecision(chifit1)
