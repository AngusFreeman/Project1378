#' T fit
#'
#' @param dataset The data set you are testing
#' @description Applies the t-test and returns relevant output in a list.
#'
#' @return Relevent t-test statistics.
#' @export
#' @importFrom  stats t.test
#'
#' @examples tfit(project)
tfit <- function(dataset) {
  tmodel <- t.test(dplyr::filter(dataset, gender == "Female")$height, dplyr::filter(dataset, gender == "Male")$height, var.equal = TRUE)

  tfit1 <- list(
    tmodel[[1]],
    tmodel[[2]],
    tmodel[3],
    tmodel[4],
    tmodel[5])

  return(tfit1)
}
