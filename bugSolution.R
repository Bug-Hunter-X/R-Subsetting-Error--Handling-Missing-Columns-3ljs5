```R
# This code robustly handles cases where specified column names might be absent.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "d", "c")

# Check which columns are present in the dataframe
present_cols <- cols_to_select[cols_to_select %in% names(df)]

#Subset only with columns that are present
if (length(present_cols) > 0) {
  subset_df <- df[, present_cols]
  print(subset_df)
} else {
  print("No columns to select found in the data frame.")
}

#Alternative solution using dplyr package
library(dplyr)

subset_df <- select(df, all_of(cols_to_select))

#Handle the case where no columns are selected
if(ncol(subset_df) == 0) {
    print("No columns selected")
} else {
    print(subset_df)
}
```