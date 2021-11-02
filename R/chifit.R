chifit <- function(dataset) {
  chimodel <- chisq.test(dataset$gender, dataset$phys, correct = FALSE)


  chifit1 <- list(
    chimodel[1],
    chimodel[2],
    chimodel[3],
    chimodel[4])

  return(chifit1)
}
chifit1 <- chifit(project_data)
chifit1

