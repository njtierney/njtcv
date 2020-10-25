##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_posters <- function() {

  read_cv_sheet(sheet = "posters") %>% 
    filter(include) %>% 
    detailed_entries(what, when, with, where, why)

}
