#' Build and check a package, cleaning up automatically on success.
#'
#' \code{check} automatically builds a package before using \code{R CMD check}
#' as this is the recommended way to check packages.  Note that this process
#' runs in an independent realisation of R, so nothing in your current
#' workspace will affect the process.
#'
#' After the \code{R CMD check}, this will run checks that are specific
#' to devtools.
#'
#' @param pkg package description, can be path or package name.  See
#'   \code{\link{as.package}} for more information
#' @param document if \code{TRUE} (the default), will update and check
#'   documentation before running formal check.
#' @param cleanup if \code{TRUE} the check directory is removed if the check
#'   is successful - this allows you to inspect the results to figure out what
#'   went wrong. If \code{FALSE} the check directory is never removed.
#' @param cran if \code{TRUE} (the default), check with CRAN.
#' @param check_version if \code{TRUE}, check that the new version is greater
#'   than the current version on CRAN.
#' @param args An optional character vector of additional command line
#'   arguments to be passed to \code{R CMD check}.
#' @export
check <- function(pkg = ".", document = TRUE, cleanup = TRUE,
  cran = TRUE, check_version = FALSE, args = NULL) {
  pkg <- as.package(pkg)

  if (document) {
    document(pkg, clean = TRUE)
  }

  built_path <- build(pkg, tempdir())
  on.exit(unlink(built_path))

  r_cmd_check_path <- check_r_cmd(built_path, cran, check_version, args)

  check_devtools(pkg, built_path)


  if (cleanup) {
    unlink(r_cmd_check_path, recursive = TRUE)
  } else {
    message("R CMD check results in ", r_cmd_check_path)
  }

  invisible(TRUE)
}


# Run R CMD check and return the path for the check
# @param built_path The path to the built .tar.gz source package.
# @param check_dir The directory to unpack the .tar.gz file to
check_r_cmd <- function(built_path = NULL, cran = TRUE, check_version = FALSE,
  args = NULL, check_dir = tempdir()) {

  pkgname <- gsub("_.*?$", "", basename(built_path))

  opts <- "--timings"
  opts <- paste(paste(opts, collapse = " "), paste(args, collapse = " "))

  env_vars <- NULL
  if (cran) {
    env_vars <- c(env_vars, cran_env())
  }
  if (check_version) {
    env_vars <- c(env_vars, "_R_CHECK_CRAN_INCOMING_" = "TRUE")
  }

  R(paste("CMD check ", shQuote(built_path), " ", opts, sep = ""), check_dir,
    env_vars)

  # Return the path to the check output
  file.path(tempdir(), paste(pkgname, ".Rcheck", sep = ""))
}


# Return the environment variables that are used CRAN when checking packages.
# These environment variables are from the R Internals document. The only
# difference from that document is that here, _R_CHECK_CRAN_INCOMING_ is
# not set to TRUE.
cran_env <- function() {
  c("_R_CHECK_VC_DIRS_"                = "TRUE",
    "_R_CHECK_TIMINGS_"                = "10",
    "_R_CHECK_INSTALL_DEPENDS_"        = "TRUE",
    "_R_CHECK_SUGGESTS_ONLY_"          = "TRUE",
    "_R_CHECK_NO_RECOMMENDED_"         = "TRUE",
    "_R_CHECK_EXECUTABLES_EXCLUSIONS_" = "FALSE",
    "_R_CHECK_DOC_SIZES2_"             = "TRUE"
  )
}
