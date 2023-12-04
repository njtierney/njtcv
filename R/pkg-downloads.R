build_url <- function(pkg,
                      start_date = "2015-01-01",
                      end_date = Sys.Date()){
  glue(
    "https://cranlogs.r-pkg.org/downloads/total/{start_date}:{end_date}/{pkg}"
  )
}

pkgs_on_cran <- function(pkgs){
  avail <- as_tibble(available.packages(),
                     .name_repair = make_clean_names)
  pkgs %in% avail$package
}

scrape_downloads <- function(x){
  x %>% 
    bow() %>% 
    scrape() %>% 
    pluck(1) %>% 
    pluck("downloads")
}


pkgs_downloads <- function(pkgs,
                          start_date = "2015-01-01",
                          end_date = Sys.Date()){
  
  pkg_urls <- build_url(pkgs,
                        start_date = start_date,
                        end_date = end_date)
  
  map_dbl(pkg_urls, scrape_downloads)
  
}

# df_software <- read_sheet(ss = sheet_id, sheet = "software")
# df_software

# pkg_downloads("naniar")

