context("Basic GLPK")

test_that("GLPK example 1", {
  obj <- c(2, 4, 3)
  mat <- matrix(c(3, 2, 1, 4, 1, 3, 2, 2, 2), nrow = 3)
  dir <- c("<=", "<=", "<=")
  rhs <- c(60.6, 30, 60.6)
  max <- TRUE

  s1 = Rglpk_solve_LP(obj, mat, dir, rhs, max = max)
  expect_equal( s1$optimum, 70.5, tolerance=1e-5 )
  expect_equal( s1$solution, c(0, 10.2, 9.9), tolerance=1e-5 )
  expect_equal( s1$status, 0 )
})
