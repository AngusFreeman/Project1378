test_that("error in inputs", {
  expect_error(myttest(error_dataset), "object 'gender' not found")
})
