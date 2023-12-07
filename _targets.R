## Load your packages, R files, etc e.g. library(targets).
targets::tar_source("packages.R")
targets::tar_source()

## tar_plan supports drake-style targets and also tar_target()
tar_plan(
  awards = get_awards(),
  communication = get_communication(),
  education = get_education(),
  employment = get_employment(),
  grants = get_grants(),
  memberships = get_memberships(),
  publications = tidy_publications(),
  tar_target(write_pubs, 
             write_publications(publications),
             format = "file"),
  software = get_software(),
  stars = get_stars(software),
  software_stars_dl = add_stars_downloads(software, stars),
  prepared_software = tidy_software(software_stars_dl),
  tar_target(name = bib_articles, 
             command = "bib/njt-articles.bib",
             format = "file"),
  tar_target(name = bib_chapters, 
             command = "bib/njt-book-chapters.bib",
             format = "file"),
  tar_target(name = bib_pre_prints, 
             command = "bib/njt-pre-prints.bib",
             format = "file"),
  published_articles = tidy_articles(bib_articles),
  book_chapters = tidy_book_chapters(book_ch = bib_chapters),
  preprints = tidy_preprints(preprints = bib_pre_prints),
  service = get_service(),
  talks = get_talks(),
  invited_academic = get_invited_academic(),
  paper_in_prep = get_paper_in_prep(),
  posters = get_posters(),
  teaching = get_teaching(),
  workshops = get_workshops(),
  
  # I keep needing to un/comment this, which doesn't make sense
  tar_render(
    name = vitae,
    path = "vitae/vitae.Rmd"
  )
  
)
