dataset <- "WHOSIS_000001"

test_that("get_data returns a data frame with positive length", {
  skip_on_cran()
  testthat::skip_on_os("windows")
  life_exp <- get_data(dataset)

  expect_equal(class(life_exp), c("tbl_df", "tbl", "data.frame"))
  expect_true(nrow(life_exp) > 0)
})

test_that("get_codes returns a data frame with positive length", {
  skip_on_cran()
  testthat::skip_on_os("windows")
  codes <- get_codes()
  expect_equal(class(codes), c("tbl_df", "tbl", "data.frame"))
  expect_true(nrow(codes) > 0)
})

test_that("get_codes(TRUE) returns a data frame with positive length and more than three columns", {
  skip_on_cran()
  testthat::skip_on_os("windows")
  codes <- get_codes(TRUE)
  expect_equal(class(codes), c("tbl_df", "tbl", "data.frame"))
  expect_true(nrow(codes) > 0)
  expect_true(ncol(codes) > 3)
})
