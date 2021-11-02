#' Lm Conclusion
#'
#' @param dataset The data set you are testing
#' @description Gives a conclusion for the linear model test based upon the p-value obtained.
#'
#' @return
#' @export
#'
#' @examples
lmconclusion <- function(dataset) {
  if(lmfit(dataset)[4] < 0.05) {
    paste("Conclusion: Since the p-value is less than 0.05, i.e. 0 does not lie withinn the 95% confidence interval for β, it is statistically unlikely that the null hypothesis is correct, so we reject the null hypothesis in favour of the alternative hypothesis and assume that β = ", lmfit(dataset)[4], ".", sep = "")
  } else {
    paste("Conclusion: Since the p-value is greater than 0.05, i.e. 0 lies within the 95% confidence interval for β, we do not have enough statisctical certainty to reject the null hypothesis in favour of the alternative hypothesis, and so we assume that β = 0.")
  }
}
