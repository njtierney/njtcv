##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
get_communication <- function() {

  read_cv_sheet(sheet = "communication") %>% 
    fill(-why) %>% 
    detailed_entries(what, when, with, where, why)

}
