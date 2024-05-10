fit_simple <- function(m_data) {
  simple_model <- lm(average_rating ~ genres, data = m_data)
  return(simple_model)
}
#pacman::p_load(tidyverse, targets)
#tar_load(movies_christmas)
#fit_null(movies_christmas)
