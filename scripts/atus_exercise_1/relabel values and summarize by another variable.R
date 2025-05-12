install.packages("ipumsr") 
install.packages("tidyverse")

library(ipumsr)
library(dplyr) 

ddi <- read_ipums_ddi("atus_00001.xml")
data <- read_ipums_micro(ddi) 

View(data)

ipums_val_labels(data$EDUC)  #displays current value labels for the EDUC variable

#create a new education variable that combines the EDUC codes into four categories
data <- data %>%    
  mutate (
    EDUC_CAT = EDUC %>%      
      lbl_na_if(~.lbl == "NIU (Not in universe)") %>% #lbl_na_if() function sets values labeled as NIU to be NA 
      lbl_relabel(       #lbl_relabel() function applies the new category labels based on the value ranges from the original EDUC variable.   
        lbl(1, "Less than HS") ~ .val %in% 10:19,         
        lbl(2, "HS Degree") ~ .val %in% 20:29,         
        lbl(3, "Some college") ~ .val %in% 30:39,         
        lbl(4, "College degree +") ~ .val %in% 40:49  
      )  
  ) 
#summarize average minutes spent doing religious activities by education level
data %>%  
  group_by(EDUC_CAT = as_factor(EDUC_CAT)) %>% 
  summarize(BLS_SOCIAL_RELIG = mean(BLS_SOCIAL_RELIG)) 


#using weights summarize average minutes spent doing religious activities by education level
# The ATUS sample design requires use of weights to provide and accurate representation at the national level. Half of the interview days in the sample are weekdays, while the other half are weekends. 
#The weight WT06 adjusts for the disproportional number of weekend days, and should be used to weight time use variables. 
#WT06 gives the number of person-days in the calendar quarter represented by each survey response
