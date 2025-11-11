test_that("character", {
  expect_error(vswitch(LETTERS, 1, 2, 3), "deprecated")
  expect_error(vswitch(LETTERS), "deprecated")
  expect_error(
    vswitch(LETTERS, A = 1, B = 2, 3),
    "deprecated"
  )
  expect_error(
    vswitch(LETTERS, A = 1, B = 1 + 1, 3, D = 2 * 2),
    "deprecated"
  )
  expect_error(vswitch(LETTERS, ZZ = stop()), "deprecated")
  expect_error(vswitch(LETTERS, A = stop("Found A")), "deprecated")
})

test_that("default vector", {
  expect_error(
    vswitch(LETTERS, A = 1, B = 2, letters),
    "deprecated"
  )
})

test_that("numeric", {
  skip("NYI")
})

test_that("factor", {
  expect_error(vswitch(factor(LETTERS)), "EXPR")
})

test_that("logical", {
  expect_error(vswitch(TRUE, "EXPR"))
})
