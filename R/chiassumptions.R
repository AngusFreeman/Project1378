chiassumptions <- function(dataset) {
  cat("Both Variables are categorical",
      "All observations are independent",
      "The categories of variables are mutually exclusive",
      "The expected value of cells should be 5 or greater in at least 80% of cells", "", "Data table:", sep = "\n")
  print(table(dataset$gender, dataset$phys))
  cat("","Expected value table:", "", sep = "\n")
  print(chisq.test(dataset$gender, dataset$phys, correct = FALSE)$expected)

}
chiassumptions(project_data)
