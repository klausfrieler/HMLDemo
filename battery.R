library(tidyverse)
library(shiny)
library(psychTestR)

taster <-function(){
  timeline <- psychTestR::join(
    psyquest::DEG(),
    psyquest::SMP(),
    psyquest::GMS(short_version = T),
    psyquest::MUS(),
    RAT::RAT(take_training = TRUE, with_finish = FALSE),
    psychTestR::elt_save_results_to_disk(complete = T),  
    final_page("Thank you")
    
  )
  make_test(timeline,
            opt = psychTestR::test_options(title = "Taster",
                                           admin_password = "admin_password",
                                           logo = "https://s3-eu-west-1.amazonaws.com/media.dots.org/img/mpiae_logo.png",
                                           logo_width = "200px",
                                           logo_height = "auto",
                                           #problems_info = problems_info,
                                           #allow_any_p_id_url = TRUE,
                                           #theme = shinythemes::shinytheme(theme),
                                           theme = bslib::bs_theme(version = 4, bootswatch = "united"
                                                                   #, base_font = bslib::font_google("Fira Sans")
                                           ),
                                           #researcher_email = researcher_email,
                                           #enable_admin_panel = enable_admin_panel,
                                           demo = FALSE,
                                           languages = c("de", "en")))
  
}