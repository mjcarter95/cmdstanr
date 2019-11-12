
not_on_cran <- function() {
  identical(Sys.getenv("NOT_CRAN"), "true")
}

on_appveyor <- function() {
  identical(tolower(Sys.getenv("APPVEYOR")), "true")
}

on_codecov <- function() {
  identical(Sys.getenv("R_COVR"), "true")
}

set_cmdstan_path_for_tests <- function() {
  if (on_appveyor()) {
    set_cmdstan_path()
  } else {
    set_cmdstan_path()
  }
}