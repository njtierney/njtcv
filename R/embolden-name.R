embolden_name <- function(string,
                          name = "Nicholas J. Tierney"){
  str_replace_all(string = string,
                  pattern = name,
                  replacement = glue::glue("\\\\textbf{<name>}",
                                           .open = "<",
                                           .close = ">"))
}
