##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_grants <- function() {

  read_cv_sheet(sheet = "grant") %>% 
    fill(-why) %>%
    detailed_entries(what, when, with, where, why)

}
