the_plan <-
  drake_plan(
    awards = get_awards(),
    communication = get_communication(),
    education = get_education(),
    employment = get_employment(),
    grants = get_grants(),
    memberships = get_memberships(),
    publications = tidy_publications(),
    write_pubs = write_publications(publications),
    software = get_software(),
    stars = get_stars(software),
    service = get_service(),
    talks = get_talks(),
    invited_academic = get_invited_academic(),
    paper_in_prep = get_paper_in_prep(),
    posters = get_posters(),
    teaching = get_teaching(),
    workshops = get_workshops(),
    
    # I keep needing to un/comment this, which doesn't make sense
    vitae = target(
      command = {
        rmarkdown::render(knitr_in("vitae.Rmd"))
        file_out("vitae.pdf")
      }
    )

)
