#' Launch test shiny Apps
#'
#' @param name The name of the app to run
#' @param ... arguments to pass to shiny::runApp
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(testApps)
#'
#' # running an app
#'   runTestApp("testApp01")
#'
#' # to get list of names of shiny apps
#'   runTestApp()
#' # this will give error with all possible
#' # shiny names contained in the package.
#'}
#'
runTestApp <- function(name, ...) {
  # locate all the shiny app examples that exist
  validNames <- list.files(system.file("apps", package = "testApps"))

  validNamessMsg <-
    paste0(
      "Valid names are: '",
      paste(validNames, collapse = "', '"),
      "'")

  # if an invalid name is given, throw an error
  if (missing(name) || !nzchar(name) || !name %in% validNames) {
    stop(
      'Please run `runTestApp()` with a valid test app as an argument.\n',
      validNamessMsg,
      call. = FALSE)
  }

  # find and launch the app
  appDir <- system.file(paste0("apps/", name), package = "testApps")
  shiny::runApp(appDir, display.mode = "normal", ...)
}
