# Sorting Data Tables

#The arrange() function from dplyr sorts a data frame by a given column.

#By default, arrange() sorts in ascending order (lowest to highest). 
#To instead sort in descending order, use the function desc() inside of arrange().

#You can arrange() by multiple levels: within equivalent values of the first level, 
#observations are sorted by the second level, and so on.

#The top_n() function shows the top results ranked by a given variable, but the 
#results are not ordered. You can combine top_n() with arrange() to return the 
#top results in order.

#NOTE: The top_n() function has been superseded in favour of slice_min()/slice_max().

# libraries and data
library(tidyverse)
library(dslabs)
data(murders)

# set up murders object
murders = murders %>%
  mutate(murder_rate = total/population * 100000)

# arrange by population column, smallest to largest
murders %>% arrange(population) %>% head()

# arrange by murder rate in descending order
murders %>% arrange(desc(murder_rate)) %>% head()

# arrange by region alphabetically, then by murder rate within each region
murders %>% arrange(region, murder_rate) %>% head()

# show the top 10 states with highest murder rate, not ordered by rate
murders %>% top_n(10, murder_rate)

# show the top 10 states with highest murder rate, ordered by rate
murders %>% arrange(desc(murder_rate)) %>% top_n(10)

# alternatively, can use the slice_max function
murders %>% slice_max(murder_rate, n=10)
