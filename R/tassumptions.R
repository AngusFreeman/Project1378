#' T Assumptions
#'
#' @param dataset The data set you are testing
#' @description Prints the assumptions for the t-test.
#'
#' @return
#' @export
#'
#' @examples tassumptions(project)
tassumptions <- function(dataset) {
  tplota <- ggplot(data = filter(dataset, gender == "Female"),
                   mapping = aes(x = height)) +
    ggtitle("Distribution of the height of Females") +
    geom_histogram(bins = 75)

  tplotb <- ggplot(data = filter(dataset, gender == "Male"),
                   mapping = aes(x = height)) +
    ggtitle("Distribution of the height of Males") +
    geom_histogram(bins = 75)


  grid.arrange(tplota, tplotb, ncol = 1)

  cat("All observations are independent",
      "Both samples are approximately normally distributed",
      "Both samples have approximately the same variance",
      "Both samples were obtained using a random sampling method", sep = "\n")
}
