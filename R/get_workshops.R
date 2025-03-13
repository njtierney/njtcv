##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_workshops <- function() {

  read_cv_sheet(sheet = "workshop") |> 
    filter(include) |> 
    fill(-why) 

}
