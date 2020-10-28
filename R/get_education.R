##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @return
##' @author Nicholas Tierney
##' @export
get_education <- function() {

  read_cv_sheet(sheet = "education") %>% 
    fill(-why)

}
