context("list_to_df")

test_that("vector input", {
  ret <- list_to_df(3:1)
  expect_true(is.data.frame(ret))
  expect_equal(nrow(ret), 3)
  expect_equal(ret$name, 1:3)
  expect_equal(ret$value, as.list(3:1))
})

test_that("list input", {
  ret <- list_to_df(list(3:1))
  expect_true(is.data.frame(ret))
  expect_equal(nrow(ret), 1)
  expect_equal(ret$name, 1)
  expect_equal(ret$value, list(3:1))
})

test_that("NULL input", {
  ret <- list_to_df(NULL)
  expect_true(is.data.frame(ret))
  expect_equal(nrow(ret), 0)
})
