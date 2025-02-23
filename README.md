# R Subsetting Error: Handling Missing Columns

This repository demonstrates a common error in R when subsetting data frames using character vectors for column selection and provides a solution. The error occurs when the character vector includes column names not present in the data frame.  The solution implements robust error handling to gracefully manage missing columns.

## Bug
The `bug.R` file contains code that attempts to subset a data frame using a character vector. If any of the columns specified in the character vector are missing from the data frame, the code will throw an error.

## Solution
The `bugSolution.R` file provides a solution that uses `%in%` operator and checks if columns exist before subsetting. This prevents errors caused by missing columns and ensures that the subsetting operation is performed safely and efficiently.
