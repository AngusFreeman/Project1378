test_that("error in inputs", {
  expect_error(mylmtest(error_dataset), "object 'weight' not found")
})
