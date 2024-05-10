christmas_data <- function(m_data) {
  m_data <- m_data[m_data$christmas == TRUE, ]
  return(m_data)
}
#pacman::p_load(tidyverse, targets, readxl)
#tar_load(movies_clean)
#christmas_data(movies_clean)
