##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param software
##' @param stars
##' @return
##' @author Nicholas Tierney
##' @export
add_stars_downloads <- function(software, stars) {

  software |> 
    left_join(stars, by = c("what" = "pkg")) |> 
    select(what:stars,
           -repo) |> 
    mutate(downloads = pkgs_downloads(what))
    

}
