#' @importFrom rJava .jcall J

.onAttach <- function(...) {
    jversion <- .jcall("java/lang/System", "S", "getProperty", "java.specification.version")
    jarch <- .jcall("java/lang/System", "S", "getProperty", "os.arch")
    jvendor <- .jcall("java/lang/System", "S", "getProperty", "java.vendor")
    packageStartupMessage("Java version ", jversion, "x ",jarch, " by ", jvendor, " detected")
    if (as.numeric(jversion) < 1.7) {
        packageStartupMessage("WARNING: Java versions under 1.7x not supported by the netCDF API. Please upgrade\n<https://github.com/SantanderMetGroup/loadeR/wiki/installation>.")
    } else {
        packageStartupMessage("NetCDF Java Library v4.6.0-SNAPSHOT (23 Apr 2015) loaded and ready")
    }
    J("java.util.logging.Logger")$getLogger("")$setLevel(J("java.util.logging.Level")$SEVERE)
} 



