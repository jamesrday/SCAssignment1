fit_int <- function(m_data) {
  int_model <- lm(average_rating ~ genres * christmas, data = m_data)
  return(int_model)
}
#pacman::p_load(tidyverse, targets)
#tar_load(movies_christmas)
#fit_null(movies_christmas)
