library(targets)
library(tarchetypes) # Load other packages as needed.
library(quarto)

# Set target options:
tar_option_set(
  packages = c("tidyverse","readxl","gt"),
  format = "rds"
)

tar_source()

# Replace the target list below with your own:
list(
  tar_file(movies_data, "raw-data/2024-03-13-movies.xlsx"),
  tar_target(movies_clean, clean_data(movies_data)),
  tar_target(movies_christmas, christmas_data(movies_clean)),
  tar_target(christmas_tab, get_table(movies_christmas)),
  tar_target(movies_tab, get_table(movies_clean)),
  tar_target(MNull, fit_null(movies_clean)),
  tar_target(M1, fit_simple(movies_clean)),
  tar_target(M2, fit_add(movies_clean)),
  tar_target(M3, fit_int(movies_clean)),
  tar_target(movies_AIC, get_AIC(MNull,M1,M2,M3)),
  tar_target(christmas_anova, get_ANOVA(M2,M3)),
  tar_quarto(README, "README.qmd")
)
