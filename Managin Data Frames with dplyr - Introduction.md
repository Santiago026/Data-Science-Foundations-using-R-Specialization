# Overview - dplyr
- dplyr package in R is a package specifically designed to help you work with data frames
- arrange, filter, select, mutate, rename

## The data frame is a key data structure is statistics and in R
- There is one observation per row
- Each column represents a variable or measure or characteristic
- Primary implementation that you will use is the default R implementation
- Other implementations, particularly relational databases systems
- Developed by Hadley Wickham of Rstudio
- An optimized and stilled version of plyr package (also by Hadley)
- Does not provide any "new" functionality per se, but greatly simplifies existing functionality in R
- Provides a "grammar" (in particular, verbs) for data manipulation
- Is **very** fast, as many key operations are coded in C++

# dplyr Verbs
- ``` Select ```: return a subset of the columns of a data frame
- ``` filter ```: extract a subset of rows from a data frame based on logical conditions
- ``` arrange ```: reorder rows of a data frame
- ``` rename ```: rename variables in a dta frame
- ``` mutate ```: add new variables/columns or transform existing variables
- ``` summarise/summarize ```: generate summary statistics of different variables in the data frame, possibly within strata

### There is also a handy print method that prevents you from printing a lot of data to the console

# dplyr Proerties
- The first argument is a data frame
- The subsequent arguments describe what to do with it, and you can refer to columns in the data frame directly without using the $ operator (just use the names)
- The result is a new data frame
- Data frames must be properly formatted and annotated for this to all be useful
