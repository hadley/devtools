test_that("check_man works", {
  # tools:::.check_Rd_xrefs which is called by `check_man()` assumes the base
  # and recommended packages will all be in the library path, which is not the
  # case during R CMD check, so we only run these tests interactively

  skip_if(!interactive())

  pkg <- create_local_package()
  dir.create(file.path(pkg, "man"))
  writeLines(c("
\\name{foo}
\\title{Foo bar}
\\usage{
foo(x)
}
\\arguments{\\item{foo}{}}
"), file.path(pkg, "man", "foo.Rd"))

expect_output(
  check_man(pkg),
  "Undocumented arguments"
)
})
