##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_teaching <- function() {

  read_cv_sheet(sheet = "teaching") %>% 
    detailed_entries(what, when, with, where, why)

}
