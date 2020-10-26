##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param publications
##' @return
##' @author Nicholas Tierney
##' @export
write_publications <- function(publications) {

  fs::dir_create(path = "bib")
  publications %>% 
    filter(!grepl("^CRAN Task", title),
           year != 2012) %>% 
    as.BibEntry() %>% 
    WriteBib("bib/articles.bib")

}
