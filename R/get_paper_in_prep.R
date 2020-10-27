##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_paper_in_prep <- function() {

  read_cv_sheet(sheet = "papers-in-prep") %>% 
    filter(include) 

}
