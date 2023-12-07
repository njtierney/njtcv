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

  dir_create(path = "bib")
  
  write_pub <-publications %>% 
    filter(!grepl("^CRAN Task", title),
           year != 2012) %>% 
    as.BibEntry()
  
  WriteBib(write_pub, "bib/articles.bib")
  
  names(file_exists("bib/articles.bib"))

}
