install.packages("ipumsr") 
install.packages("tidyverse")

library(ipumsr)
library(dplyr) 

ddi <- read_ipums_ddi("atus_00001.xml")
data <- read_ipums_micro(ddi) 

View(data)

