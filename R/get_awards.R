##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_awards <- function() {

  read_cv_sheet(sheet = "awards") %>% 
    fill(-why) %>%
    mutate(what = "") %>%  
    # detailed_entries(what, when, with, where, why)
    detailed_entries(when = when, 
                     with = with, 
                     where = where, 
                     why = why)

}
