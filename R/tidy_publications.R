##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
tidy_publications <- function() {

  pubs <- get_publications("o4eVsQEAAAAJ&hl") %>% 
    distinct(title, .keep_all = TRUE) %>%
    transmute(bibtype = "Article", 
              author = as.character(author),
              title = as.character(title),
              journaltitle = as.character(journal), 
              year,
              key = row_number())
  
  pubs
  

}
