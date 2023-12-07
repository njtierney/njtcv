##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param bibfile
##' @return
##' @author Nicholas Tierney
##' @export
tidy_articles <- function(bibfile = "bib/njt-articles.bib") {

  journals <- read_bib(bibfile) %>% 
    filter(str_detect(bib_orig, "journal ")) %>% 
    mutate(journal = subset_remove_curlies(bib_orig)) %>% 
    select(title, journal)
  
  read_bib_distinct(bibfile) %>% 
    left_join(journals, by = "title") %>% 
    mutate(title = remove_curlies(title),
           title = toTitleCase(title),
           detailed_with = embolden_name(author, 
                                         name = "Tierney, Nicholas J."),
           year = as.integer(year)) %>% 
    drop_na(title) %>% 
    arrange(-year) %>% 
    mutate(year = as.character(year))

}
