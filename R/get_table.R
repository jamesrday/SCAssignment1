get_table <- function(m_clean) {
  m_clean %>%
    group_by(genres) %>%
    summarise (
      mean_rating = round(mean(average_rating),2),
      median_rating = median(average_rating),
      stdev_rating = round(sd(average_rating),2),
      num_movies = n()
    ) %>%
    arrange(-mean_rating) %>%
    gt() %>%
    fmt_number(col = 2)
}
#pacman::p_load(tidyverse, targets, gt)
#tar_load(movies_clean)
#get_table(movies_clean)
