test_that("Testing the evalparsetext function", {
  skip_on_cran()

  expect_equal(print(evalparsetext("a <- 1")), 1)

})





