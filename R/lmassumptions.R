#' Lm Assumptions
#'
#' @param dataset The data set you are testing
#' @description Prints the assumptions for the linear model test.
#'
#' @return
#' @export
#'
#' @examples
lmassumptions <- function(dataset) {
  plota <- ggplot(data = dataset,
                  mapping = aes(x = height, y = weight)) +
    ggtitle("Y vs X") +
    geom_smooth()

  plotb <- ggplot(data = lm(weight~height, data = dataset),
                  mapping = aes(x = .fitted, y = .resid)) +
    ggtitle("Residuals vs Fitted Values") +
    geom_point()

  plotc <- ggplot(data = lm(weight~height, data = dataset),
                  mapping = aes(x = .resid)) +
    ggtitle("Residuals Histogram") +
    geom_histogram(bins = 150)

  grid.arrange(plota, plotb, plotc, ncol = 3)

  cat("The relationship between the variables can be described by a linear equation",
      "The residuals are independent of each other",
      "The residuals have equal variance",
      "The distribution of the residuals is normally distributed", sep = "\n")
}
