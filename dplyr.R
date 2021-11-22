# DPLYR

#summarize() from the dplyr/tidyverse package computes summary statistics from
# the data frame. It returns a data frame whose column names are defined within 
#the function call.

#Summarize() can compute any summary function that operates on vector and returns
#a single value, but it cannot operate on functions that return multiple values.

#Like most dplyr functions, summarize() is aware of variable names within data
#frames and can use them directly.

library(tidyverse)
library(dslabs)
data("heights")

# compute average and standard deviation for males
s = heights %>%
  filter(sex=="Male") %>%
  summarise(average = mean(height), standard_deviation = sd(height))

# access average and sd from summary table
s$average
s$standard_deviation

# compute median, min and max
heights %>%
  filter(sex=="Male") %>%
  summarise(median = median(height),
            minimun = min(height),
            maximum = max(height))

# alternative way to get min, median, max in base R
quantile(heights$height, c(0, 0.5,1))

# error: summarize can only take functions that return a single value
heights %>%
  filter(sex=="Male") %>%
  summarise(range = quantile(height, c(0,0.5,1)))

