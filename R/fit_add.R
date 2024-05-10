fit_add <- function(m_data) {
  add_model <- lm(average_rating ~ genres + christmas, data = m_data)
  return(add_model)
}
#pacman::p_load(tidyverse, targets)
#tar_load(movies_christmas)
#fit_null(movies_christmas)
