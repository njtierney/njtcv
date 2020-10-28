read_bib <- function(path){
  bib2DT(file.bib = path) %>% 
    as_tibble()
}
read_bib_distinct <- function(path){
  read_bib(path) %>% 
    distinct(title, .keep_all = TRUE)
}

remove_curlies <- function(string){
  str_remove_all(string = string, 
                 pattern = "\\{|\\}")
}

subset_remove_curlies <- function(string){
  str_extract(string = string,
              pattern = "\\{(.*?)\\}") %>% 
    str_remove_all("\\{|\\}")
}
