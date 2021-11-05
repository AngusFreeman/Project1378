#' Chi Fit
#'
#' @param dataset The data set you are testing
#' @description Applies the chi squared test and returns relevant ouput in a list.
#'
#' @return Relevent Chi Statistics.
#' @export
#' @importFrom stats chisq.test
#'
#' @examples chifit(project)
chifit <- function(dataset) {
  chimodel <- chisq.test(dataset$gender, dataset$phys, correct = FALSE)

  chifit1 <- list(
    chimodel[1],
    chimodel[2],
    chimodel[3],
    chimodel[4])

  return(chifit1)
}

