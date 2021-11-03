test_that("error in inputs", {
  expect_error(mychitest(error_dataset), "at least one entry of 'x' must be positive")
})
