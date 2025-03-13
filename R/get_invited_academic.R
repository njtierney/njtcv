##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
get_invited_academic <- function() {

  read_cv_sheet(sheet = "invited-academic") |> 
    fill(-why) |>
    detailed_entries(what, when, with, where, why)

}
