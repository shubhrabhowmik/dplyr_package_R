# dplyr_package_R
About summarize(), Dot Placeholder, group_by(), and Sorting Data Tables....


# DPLYR
- summarize() from the dplyr/tidyverse package computes summary statistics from the data frame. It returns a data frame whose column names are defined within the function call.
- summarize() can compute any summary function that operates on vector and returns a single value, but it cannot operate on functions that return multiple values.
- Like most dplyr functions, summarize() is aware of variable names within data frames and can use them directly.

# The Dot Placeholder
- The dot operator allows you to access values stored in data that is being piped in using the %>% character. The dot is a placeholder for the data being passed in through the pipe.
- The dot operator allows dplyr functions to return single vectors or numbers instead of only data frames.
- us_murder_rate %>% .$rate is equivalent to us_murder_rate$rate.
- Note that an equinalent way to extract a single column using the pipe is us_murder_rate %>% pull(rate). The pull() function will be used in later course material.

# Group_by()
- The group_by() function from dplyr  converts a data frame to a grouped data frame, creating groups using one or more variables.
- summarize() and some other dplyr functions will behave differently on grouped data frames.
- Using summarize() on a grouped data frame computes the summary statistics for each of the separate groups.

# Sorting Data Tables
- The arrange() function from dplyr sorts a data frame by a given column.
- By default, arrange() sorts in ascending order (lowest to highest). To instead sort in descending order, use the function desc() inside of arrange().
- We can arrange() by multiple levels: within equivalent values of the first level, observations are sorted by the second level, and so on.
- The top_n() function shows the top results ranked by a given variable, but the results are not ordered. You can combine top_n() with arrange() to return the top results in order.
- NOTE: The top_n() function has been superseded in favour of slice_min()/slice_max().
