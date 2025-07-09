# Load required libraries
library(tidyverse)
library(knitr)
library(janitor)
library(skimr)

# Load raw data
df_raw = read.csv('/Users/sanasiddiqui/Desktop/Current Desktop/Data Portfolio Projects/R Projects/Lung Capacity/Data/Raw/LungCapData.csv') %>%
  select(-1)

# Data shape
dim(df_raw)

# Inspect data
kable(head(df_raw))

# Clean column names
df = df_raw %>%
  clean_names()

# Statistical summary
summary(df)

# Find columns with N/A values
colSums(is.na(df))

# Find duplicates
sum(duplicated(df))

# No N/A or duplicate rows in this dataset, cleaned and ready to be saved
write.csv(df,"Data/Cleaned/Cleaned_Lung_Cap_Data.csv", row.names = FALSE)