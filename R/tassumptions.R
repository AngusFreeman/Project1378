#' T Assumptions
#'
#' @param dataset The data set you are testing
#' @description Prints the assumptions for the t-test.
#'
#' @return The assumptions for the t-test.
#' @export
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#'
#'
#' @examples tassumptions(project)
tassumptions <- function(dataset) {
  tplota <- ggplot2::ggplot(data = dplyr::filter(dataset, gender == "Female"),
                   mapping = aes(x = height)) +
    ggtitle("Distribution of the height of Females") +
    geom_histogram(bins = 75)

  tplotb <- ggplot2::ggplot(data = dplyr::filter(dataset, gender == "Male"),
                   mapping = aes(x = height)) +
    ggtitle("Distribution of the height of Males") +
    geom_histogram(bins = 75)


  grid.arrange(tplota, tplotb, ncol = 1)

  cat("1. All observations are independent",
      "2. Both samples are approximately normally distributed",
      "3. Both samples have approximately the same variance",
      "4. Both samples were obtained using a random sampling method", sep = "\n")
}
