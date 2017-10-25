library(tidyverse)
library(readr)
library(janitor)
library(ggplot2)

data_pups = read_csv("./FAS_pups.csv") %>% 
  clean_names() %>%  
  gather(key = index, value = PD_outcome, pd_ears:pd_walk) %>%
  filter(!is.na(PD_outcome))

head(data_pups)
  
  
  
  
  
View(data_pups)
