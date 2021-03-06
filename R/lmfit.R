#' Lm fit
#'
#' @param dataset The data set you are testing
#' @description Applies the linear model test and returns relevant ouput in a list.
#'
#' @return Relevent linear model statistics.
#' @export
#' @importFrom stats lm
#' @importFrom stats confint
#'
#' @examples lmfit(project)
lmfit <- function(dataset) {
  lmmodel <- lm(weight~height, dataset)

  lmfit1 <- list(
    summary(lmmodel)$coefficients[2,1],
    confint(lmmodel, 'height', level = 0.95),
    summary(lmmodel)$coefficients[2,3],
    summary(lmmodel)$coefficients[2,4],
    summary(lmmodel)$df[2])


  names(lmfit1) <- c("Beta Estimate", "Confidence Interval", "T-Value", "P-Value", "Degrees Freedom")
  return(lmfit1)
}
