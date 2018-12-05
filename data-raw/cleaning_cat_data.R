### Use this file to make edits to the raw data and
# to add the 'clean' data to the folder data.


# just as an fyi - this is what you run to create a 'data-raw' folder
#  devtools::use_data_raw()

# read in the data
cats <- read.csv("data-raw/cats.csv")
head(cats)

# Let's clean up the name column.....
cats$name <- gsub("\\*", "", cats$name)

# write the 'clean' version of the data to the 'data' folder
devtools::use_data(cats, overwrite=T)
