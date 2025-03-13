##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_employment <- function() {

  read_cv_sheet(sheet = "employment") |> 
    filter(include)

}
