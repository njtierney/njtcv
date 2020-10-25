read_cv_sheet <- function(sheet){
  gs4_auth(email = "nicholas.tierney@gmail.com")
  read_sheet(ss = "https://docs.google.com/spreadsheets/d/1D0gw9H_AThQWz3Op1-AuMAa2PT78sRC82vw98jXRUTI/edit#gid=1455725160", 
             sheet = sheet)
}
