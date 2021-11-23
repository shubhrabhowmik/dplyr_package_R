# The Dot Placeholder

#The dot operator allows you to access values stored in data that is being piped
#in using the %>% character. The dot is a placeholder for the data being passed
#in through the pipe.

#The dot operator allows dplyr functions to return single vectors or numbers
#instead of only data frames.

#us_murder_rate %>% .$rate is equivalent to us_murder_rate$rate.

#Note that an equinalent way to extract a single column using the pipe is us_murder_rate 
#%>% pull(rate). The pull() function will be used in later course material.

library(tidyverse)
library(dslabs)
data(murders)

murders = murders %>% mutate(murder_rate = total/population*100000)
summarize(murders, mean(murder_rate))

# calculate US murder rate, generating a data frame
us_murder_rate = murders %>%
  summarize(rate = sum(total) / sum(population) * 100000)
us_murder_rate

# extract the numeric US murder rate with the dot operator
us_murder_rate %>% .$rate

# calculate and extract the murder rate with one pipe
us_murder_rate = murders %>%
  summarize(rate = sum(total) / sum(population) * 100000) %>%
  .$rate
us_murder_rate
