# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function


# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
new.frame <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
rownames(new.frame)

# Why are they so strange?
# God knows

# What are the row names of your dataframe?
colnames(new.frame)

# Create a column `category` that is equal to your rownames
new.frame$category <- rownames(new.frame)

# How much money was spent on personal care in 1940?
care.1940 <- new.frame["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
food.1960 <- new.frame["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
highest <- new.frame$category[new.frame$X1960 == max(new.frame$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestSpending <- function(year) {
  return(new.frame$category[new.frame$year == max(new.frame$year)])
}

# Using your function, determine the highest spending category of each year
HighestSpending(new.frame$rownames(new.frame))

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
spending <- list()
for(year in seq(1940, 1960, 5)) {
  spending[paste0('X', year)] <- HighestSpending(year.index)
}
