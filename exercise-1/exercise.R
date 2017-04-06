# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawks.score <- c(36, 10, 12, 3)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.allowed <- c(6, 9, 10, 9)

# Combine your two vectors into a dataframe
games <- data.frame(s.gained = seahawks.score, o.gained = seahawks.allowed)

# Create a new column "diff" that is the difference in points
games$diff <- seahawks.score - seahawks.allowed


# Create a new column "won" which is TRUE if the Seahawks wom
games$won <- games$diff > 0

# Create a vector of the opponents


# Assign your dataframe rownames of their opponents
