```R
# This code attempts to subset a data frame using a character vector of column names,
# but it fails if any of the specified column names are not present in the data frame.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "d", "c")
subset_df <- df[, cols_to_select]

# The above code will produce an error because column "d" does not exist
```