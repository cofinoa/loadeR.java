.onAttach <- function(...) {
    mess1 <- "NetCDF Java Library v4.6.0-SNAPSHOT (23 Apr 2015) loaded and ready"
    packageStartupMessage(mess1)
    jversion <- .jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
    jarch <- .jcall("java/lang/System", "S", "getProperty", "os.arch")
    jvendor <- .jcall("java/lang/System", "S", "getProperty", "java.vendor")
    packageStartupMessage("Java version ", jversion, " ",jarch, " by ", jvendor, " detected")
    if (as.integer(substr(jversion, 3, 3)) < 7) {
          packageStartupMessage("WARNING: Java versions under 1.7x not supported by the netCDF API. Please upgrade\n<https://github.com/SantanderMetGroup/loadeR/wiki/installation>.")
    }
    J("java.util.logging.Logger")$getLogger("")$setLevel(J("java.util.logging.Level")$SEVERE)
} 



