#' @importFrom rJava .jpackage

.onLoad <- function(libname, pkgname = "netcdfAll-4.6.jar") {
      .jpackage(pkgname, lib.loc = libname)
      options(java.parameters = "-Xmx2g")
}
