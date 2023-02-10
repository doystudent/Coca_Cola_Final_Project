library(tidycensus)
library(tidyverse)

dallas_bachelors <- 
  get_acs(geography = "tract",
          variables = "DP02_0068P",
          year = 2020,
          state = "TX",
          county = "Dallas",
          geometry = TRUE)

write_rds(dallas_bachelors, "data/dallas.rds")

la_bachelors <- 
  get_acs(geography = "tract",
          variables = "DP02_0068P",
          year = 2021,
          state = "CA",
          county = "Los Angeles",
          geometry = TRUE)

write_rds(la_bachelors, "data/la.rds")

boston_bachelors <- 
  get_acs(geography = "tract",
          variables = "DP02_0068P",
          year = 2021,
          state = "MA",
          county = "Suffolk",
          geometry = TRUE)

write_rds(boston_bachelors, "data/boston.rds")
