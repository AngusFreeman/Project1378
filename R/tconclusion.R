#' T Conclusion
#'
#' @param dataset The data set you are testing
#' @description Gives a conclusion for the t-test based upon the p-value obtained.
#'
#' @return
#' @export
#'
#' @examples
tconclusion <- function(dataset) {
  if(tfit(dataset)[[3]] < 0.05) {
    paste("Conclusion: Since the p-value is less than 0.05, i.e. 0 does not lie withinn the 95% confidence interval for the difference in mean, it is statistically unlikely that the null hypothesis is correct, so we reject the null hypothesis in favour of the alternative hypothesis and assume that there is a difference in mean height between gender.")
  } else {
    paste("Conclusion: Since the p-value is greater than 0.05, i.e. 0 lies within the 95% confidence interval for the difference in the mean, we do not have enough statisctical certainty to reject the null hypothesis in favour of the alternative hypothesis, and so we assume that there is no difference in mean height between gender.")
  }
}
