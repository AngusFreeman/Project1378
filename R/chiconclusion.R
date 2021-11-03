#' Chi Conclusion
#'
#' @param dataset The data set you are testing
#' @description Gives a conclusion for the chi squared test based upon the p-value obtained.
#'
#' @return
#' @export
#'
#' @examples chiconclusion(project)
chiconclusion <- function(dataset) {
  if(chifit(dataset)[[3]] < 0.05) {
    paste("Conclusion: Since the p-value is less than 0.05, it is statistically unlikely that the null hypothesis is correct, so we reject the null hypothesis in favour of the alternative hypothesis and assume that there is association between gender and physical activity")
  } else {
    paste("Conclusion: Since the p-value is greater than 0.05, we do not have enough statisctical certainty to reject the null hypothesis in favour of the alternative hypothesis, and so we assume that there is no association between gender and physical activity")
  }
}
