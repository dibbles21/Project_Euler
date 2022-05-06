# Project Euler 9

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# a < b < c
# a + b + c = 1,000

library(tidyverse)

# get vector of potential values for a
# Logically: a < tot / len_num (333)

a <- 1:332

# get vector of potential values for c
# Logically: tot - len_num + 1 (998) > c > tot / len_num (333)

c <- 335:997

# generate df of all combinations
df <- data.frame(
  a = rep(a, length(c)),
  c = rep(c, each = length(a))) %>% 
  # add b (b = 1000 - a - c)
  mutate(b = tot - a - c) %>% 
  # Filter 998 > a + c > tot / (len_num - 1) (500)
  filter(between(b, 2, 499)) %>% 
  # Filter a squared plus b squared = c squared. Should only be one
  filter(a^2 + b^2 == c^2)

# Find product of the values
value <- df$a * df$b * df$c



