context("Namespace")

# Return ancestor environment
# e: the environment to start in
# n: number of levels to go back (if n is greater than number of ancestors,
#    return the highest level, R_EmptyEnv)
# p: print all the environments while traveling up the stack?
env_parent <- function(e = parent.frame(), n = 100, print = FALSE) {
  if (print)  cat(str(e, give.attr=F))
  i <- 0
  while(i < n) {
    if (identical(e, emptyenv()))  break

    e <- parent.env(e)
    if (print)  cat(str(e, give.attr=F))
    i <- i+1
  }
  if (print)  cat("\n")
  return(e)
}

# Is e an ancestor environment of x?
is_ancestor_env <- function(e, x) {
  while (!identical(x, emptyenv())) {
    if (identical(x, e)) {
      return(TRUE)
    } else {
      x <- parent.env(x)
    }
  }

  return(FALSE)
}


test_that("Package objects are visible from global environment", {
  load_all("namespace")

  # a is exported, b is not. But with load_all(), they should both be
  # visible in global env.
  expect_equal(a, 1)
  expect_equal(b, 2)
  unload("namespace")

  # Check that objects
})

test_that("All package objects are loaded into namespace environment", {
  load_all("namespace")
  expect_equal(a, 1)
  expect_equal(b, 2)
  unload("namespace")
})


test_that("All package objects are copied to package environment", {
  load_all("namespace")
  pkgenv <- pkg_env("namespace")
  expect_equal(pkgenv$a, 1)
  expect_equal(pkgenv$b, 2)
  unload("namespace")
})

test_that("Unloading and reloading a package works", {
  load_all("namespace")
  expect_equal(a, 1)

  # A load_all() again without unloading shouldn't change things
  load_all("namespace")
  expect_equal(a, 1)

  # Unloading should remove objects
  unload("namespace")
  expect_false(exists('a'))

  # Loading again should work
  load_all("namespace")
  expect_equal(a, 1)

  # Loading with reset should work
  load_all("namespace", reset = TRUE)
  expect_equal(a, 1)

  unload("namespace")
})

test_that("Namespace, imports, and package environments have correct hierarchy", {
  load_all("namespace")

  pkgenv <- pkg_env("namespace")
  nsenv   <- ns_env("namespace")
  imp_env <- imports_env("namespace")


  expect_identical(env_parent(nsenv, n = 1), imp_env)
  expect_identical(env_parent(nsenv, n = 2), .BaseNamespaceEnv)
  expect_identical(env_parent(nsenv, n = 3), .GlobalEnv)

  # pkgenv should be an ancestor of the global environment
  expect_true(is_ancestor_env(pkgenv, .GlobalEnv))

  # Import environment should have name attribute
  expect_equal(attr(imp_env, "name"), "imports:namespace")

  unload("namespace")
})


test_that("unload() removes package environments from search", {
  load_all("namespace")
  pkgenv <- pkg_env("namespace")
  nsenv   <- ns_env("namespace")
  imp_env <- imports_env("namespace")
  unload("namespace")

  # Should report not loaded for package and namespace environments
  expect_false(is.loaded_pkg("namespace"))
  expect_false(is.loaded_ns("namespace"))

  # R's asNamespace function should error
  expect_error(asNamespace("namespace"))

  # pkgenv should NOT be an ancestor of the global environment
  # This is what makes the objects inaccessible from global env
  expect_false(is_ancestor_env(pkgenv, .GlobalEnv))
  # Another check of same thing
  expect_false(env_pkg_name("namespace") %in% search())

  # TODO: test that it unloads dynlibs
})


test_that("Imported objects are copied to package environment", {
  load_all("namespace")
  # 'compiler' is one of the imports
  imp_env <- imports_env("namespace")

  # cmpfun is exported from compiler, so it should be in imp_env
  expect_identical(imp_env$cmpfun, compiler::cmpfun)

  # cmpSpecial is NOT exported from grid, so it should not be in imp_env
  expect_true(exists("cmpSpecial", asNamespace("compiler")))
  expect_false(exists("cmpSpecial", imp_env))

  unload("namespace")
})
