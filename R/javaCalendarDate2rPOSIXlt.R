#' Java calendar dates to R POSIXlt dates
#' 
#' @description Converts objects of the Java class \sQuote{CalendarDate} to \link[base]{POSIXlt} in R
#' 
#' @param javaCalendarDate A \sQuote{ucar.nc2.time.CalendarDate} object or array 
#'  containing N of them.
#' @return A vector of \code{POSIXlt} dates in R
#' @author J. Bedia 
#' @references \url{http://www.unidata.ucar.edu/software/thredds/v4.3/netcdf-java/v4.3/javadoc/index.html}
#' @keywords internal
#' @export

javaCalendarDate2rPOSIXlt <- function(javaCalendarDate) {
    r.string <- gsub("T|Z", "", javaString2rChar(javaCalendarDate$toString()))
    as.POSIXlt(r.string, tz = "GMT", format = "%Y-%m-%d%H:%M:%S")
}
# End
