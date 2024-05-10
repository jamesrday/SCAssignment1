clean_data <- function(m_data) {
  m_df <- read_excel(m_data) # read in xlsx to df
  m_df <- m_df %>%
    filter(title_type == "movie") %>% # ensure these are Christmas movies
    select(genres, average_rating, christmas) %>% # select relevant columns
    na.omit() %>% # omit rows with no genre recorded
    separate_longer_delim(genres, delim = ",") # split genres
  return(m_df) # return modified df
}
#pacman::p_load(tidyverse, targets, readxl)
#tar_load(movies_data)
#clean_data(movies_data)
