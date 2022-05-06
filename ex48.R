# Project Euler
# Problem 48

library(tidyverse)

# vector of 1:1000


nums <- 1:1000

df <- data.frame(
  nums = nums) %>% 
  mutate(nums = as.integer(nums),
         nums_last = str_sub(nums, -1, -1),
         # calculate values
         nums_end = case_when(
           nums_last == 0 ~ 0,
           nums_last == 1 ~ 1,
           nums_last == 2 ~ case_when(
             nums %% 4 == 1 ~ 2,
             nums %% 4 == 2 ~ 4,
             nums %% 4 == 3 ~ 8,
             nums %% 4 == 0 ~ 6,
             TRUE ~ 0),
           nums_last == 3 ~ case_when(
             nums %% 4 == 1 ~ 3,
             nums %% 4 == 2 ~ 9,
             nums %% 4 == 3 ~ 7,
             nums %% 4 == 0 ~ 1,
             TRUE ~ 0),
           nums_last == 4 ~ case_when(
             nums %% 2 == 1 ~ 4,
             nums %% 2 == 0 ~ 6,
             TRUE ~ 0),
           nums_last == 5 ~ 5,
           nums_last == 6 ~ 6,
           nums_last == 7 ~ case_when(
             nums %% 4 == 1 ~ 7,
             nums %% 4 == 2 ~ 9,
             nums %% 4 == 3 ~ 3,
             nums %% 4 == 0 ~ 1,
             TRUE ~ 0),
           nums_last == 8 ~ case_when(
             nums %% 4 == 1 ~ 8,
             nums %% 4 == 2 ~ 4,
             nums %% 4 == 3 ~ 2,
             nums %% 4 == 0 ~ 6,
             TRUE ~ 0),
           nums_last == 9 ~ case_when(
             nums %% 2 == 1 ~ 9,
             nums %% 2 == 0 ~ 1,
             TRUE ~ 0),
           TRUE ~ 0))

# get answer
# Only gives the last four digits though
# Need to consider the last 8 or so digits :(
ans <- sum(df$nums_end)

# Maybe need to consider last two or three digits...


