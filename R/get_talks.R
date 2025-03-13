##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
get_talks <- function() {

  read_cv_sheet(sheet = "talks") |> 
    filter(include)

}
