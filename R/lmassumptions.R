#' Lm Assumptions
#'
#' @param dataset The data set you are testing
#' @description Prints the assumptions for the linear model test.
#'
#' @return
#' @export
#' @import ggplot2
#'
#' @examples lmassumptions(project)
lmassumptions <- function(dataset) {
  plota <- ggplot2::ggplot(data = dataset,
                  mapping = aes(x = height, y = weight)) +
    ggtitle("Y vs X") +
    geom_smooth()

  plotb <- ggplot2::ggplot(data = lm(weight~height, data = dataset),
                  mapping = aes(x = .fitted, y = .resid)) +
    ggtitle("Residuals vs Fitted Values") +
    geom_point()

  plotc <- ggplot2::ggplot(data = lm(weight~height, data = dataset),
                  mapping = aes(x = .resid)) +
    ggtitle("Residuals Histogram") +
    geom_histogram(bins = 150)

  grid.arrange(plota, plotb, plotc, ncol = 3)

  cat("1. The relationship between the variables can be described by a linear equation",
      "2. The residuals are independent of each other",
      "3. The residuals have equal variance",
      "4. The distribution of the residuals is normally distributed", sep = "\n")
}
