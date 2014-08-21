context("thisfile")

test_that("thisfile works with source", if (FALSE) {
  res <- source("scripts/thisfile.R")
  expect_true(grepl("thisfile.R$", res$value))
})

test_that("thisfile works with Rscript", if (FALSE) {
  p <- pipe("Rscript scripts/thisfile-cat.R")
  on.exit(close(p))
  res <- readLines(p)
  expect_equal("scripts/thisfile-cat.R", res)
})
