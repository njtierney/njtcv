##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param preprints
##' @return
##' @author Nicholas Tierney
##' @export
tidy_preprints <- function(preprints = "bib/njt-pre-prints.bib") {

  read_bib_distinct(preprints) |> 
    mutate(detailed_with = embolden_name(author, 
                                         name = "Tierney, Nicholas J."),
           title = remove_curlies(title),
           title = toTitleCase(title),
           year = as.integer(year)) |> 
    drop_na(title) |> 
    arrange(-year) |> 
    mutate(year = as.character(year))

}
