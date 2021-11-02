#' T fit
#'
#' @param dataset The data set you are testing
#' @description Applies the t-test and returns relevant ouput in a list.
#'
#' @return
#' @export
#'
#' @examples
tfit <- function(dataset) {
  tmodel <- t.test(filter(dataset, gender == "Female")$height, filter(dataset, gender == "Male")$height)

  tfit1 <- list(
    tmodel[[1]],
    tmodel[[2]],
    tmodel[3],
    tmodel[4],
    tmodel[5])

  return(tfit1)
}
