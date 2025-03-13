##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param software
##' @return
##' @author Nicholas Tierney
##' @export
get_stars <- function(software) {
  
  software_names <- software$what

  repos <- glue("njtierney/{software_names}")
  
  repo_metrics <- map_dfr(repos,
                          get_repo_metrics) |> 
    mutate(pkg = str_remove(repo, "njtierney/")) |> 
    arrange(-stars)
  
  repo_metrics

}
