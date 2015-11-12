.onAttach <- function(...) {
    mess1 <- "NetCDF Java Library v4.6.0-SNAPSHOT (23 Apr 2015) loaded and ready"
    packageStartupMessage(mess1)
    J("java.util.logging.Logger")$getLogger("")$setLevel(J("java.util.logging.Level")$SEVERE)
} 


