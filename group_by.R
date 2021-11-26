# Group_by()

#The group_by() function from dplyr  converts a data frame to a grouped data frame,
#creating groups using one or more variables.

#summarize() and some other dplyr functions will behave differently on grouped data frames.
#Using summarize() on a grouped data frame computes the summary statistics for each of the
#separate groups.

# libraries and data
library(tidyverse)
library(dslabs)
data(heights)
data(murders)

# compute separate average and standard deviation for male/female heights
heights %>%
  group_by(sex) %>%
  summarise(average = mean(height), standard_deviation = sd(height))

# compute separate average and standard deviation for male/female heights
murders = murders %>%
  mutate(murder_rate = total/population * 100000)
murders %>%
  group_by(region) %>%
  summarise(median_rate = median(murder_rate))
