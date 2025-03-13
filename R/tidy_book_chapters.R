##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param book_ch
##' @return
##' @author Nicholas Tierney
##' @export
tidy_book_chapters <- function(book_ch = "bib/njt-book-chapters.bib") {

  read_bib_distinct(book_ch) |> 
    drop_na(title) |> 
    mutate(detailed_with = embolden_name(author, 
                                         name = "Tierney, Nicholas J."),
           title = remove_curlies(title),
           title = toTitleCase(title),
           booktitle = remove_curlies(booktitle),
           booktitle = toTitleCase(booktitle),
           year = as.integer(year)) |> 
    arrange(-year) |> 
    mutate(year = as.character(year)) |> 
    select(-c(date:annote),
           -c(chapter:edition),
           -c(howpublished:organization))

}
