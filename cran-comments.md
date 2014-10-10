This is a resubmission of devtools 1.6.1, previous notes below. New changes:

* devtools avoids non-portable compiler flags on Solaris.

--------------------------------------------------------------------------------

This is a minor patch release to fix two problems encountered with interactive usage of devtools.

The following notes were generated across my local OS X install, ubuntu running on travis-ci and win builder. Response to NOTEs across three platforms below.

* checking dependencies in R code ... NOTE
  Namespace in Imports field not imported from: ‘memoise’
  All declared Imports should be used.
  
  memoise is a build-time dependency.

* checking R code for possible problems ... NOTE
  Found the following calls to attach():
    File 'devtools/R/package-env.r':
      attach(NULL, name = pkg_env_name(pkg))
    File 'devtools/R/shims.r':
      attach(e, name = "devtools_shims", warn.conflicts = FALSE)

  These are needed because devtools simulates package loading, and hence
  needs to attach environments to the search path.
