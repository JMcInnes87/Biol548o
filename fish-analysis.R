# Fish_data allows you to upload the csv file for fish size and growth rate data
fish_data = read.csv("Gaeta_etal_CLC_data.csv")
library(dplyr)
fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 200, "big", "small"))
fish_data_cat = fish_data %>% 
  mutate(length_cat = ifelse(length > 300, "big", "small"))