fit_null <- function(m_data) {
  null_model <- lm(average_rating ~ 1, data = m_data)
  return(null_model)
}
#pacman::p_load(tidyverse, targets)
#tar_load(movies_christmas)
#fit_null(movies_christmas)
