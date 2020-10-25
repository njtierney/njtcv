build_url <- function(pkg,
                      start_date = "2015-01-01",
                      end_date = Sys.Date()){
  glue(
    "https://cranlogs.r-pkg.org/downloads/total/{start_date}:{end_date}/{pkg}"
  )
}

pkg_on_cran <- function(pkg){
  avail <- as_tibble(available.packages(),
                     .name_repair = janitor::make_clean_names)
  pkg %in% avail$package
}


pkg_downloads <- function(pkg,
                          start_date = "2015-01-01",
                          end_date = Sys.Date()){
  
  on_cran <- pkg_on_cran(pkg)
  
  if (!on_cran) {
    stop("Package, ", pkg, " not on CRAN")
  }
  
  build_url(pkg,
            start_date = start_date,
            end_date = end_date) %>% 
    bow() %>% 
    scrape() %>% 
    pluck(1) %>% 
    pluck("downloads")
  
}

# df_software <- read_sheet(ss = sheet_id, sheet = "software")
# df_software

# pkg_downloads("naniar")

