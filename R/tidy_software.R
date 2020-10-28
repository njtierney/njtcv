##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param software_stars_dl
##' @return
##' @author Nicholas Tierney
##' @export
tidy_software <- function(software_stars_dl) {

  software_stars_dl %>% 
    arrange(-when) %>% 
    mutate(detailed_why = pmap(
      .l = list(
        stars = stars, 
        downloads = downloads),
      .f = function(why, stars, downloads){
        if (downloads == 0){
          return(c(
            paste0(stars, " stars")))
        }
        c(
          paste0(stars, " stars"),
          paste0(comma(downloads), " downloads"))
      }
    ))

}
