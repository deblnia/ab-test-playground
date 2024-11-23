library(tidyverse)

df <- read_csv("Downloads/asos_digital_experiments_dataset.csv")

## EXPERIMENT 1 ## 
exp1 <- df %>% 
  filter(experiment_id == "036afc")

# Exposure Curve
exp1 %>% 
  group_by(time_since_start) %>% 
  summarize(n = n()) %>% 
  mutate(cumulative_sum = cumsum(n)) %>% 
  ggplot() + 
  geom_line(aes(time_since_start, cumulative_sum)) + 
  theme_minimal() + 
  labs(x = "Time since start (days)", 
       y = "Cumulative Num. Exposures")
  

# metric 1 



