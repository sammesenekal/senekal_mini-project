library(here)
library(tidyverse)
library(readr)

#First I will make a CSV file out of the R data set "Theoph"

readr::write_csv(Theoph, here::here("data", "data_raw", "Theoph.csv"))

#Then I will read the CSV file back into R for analysis

my_Theoph <- readr::read_csv(here::here("data","data_raw","Theoph.csv"))

#Now I will select for the variables I want to analyse 

my_Theoph_threevar <- my_Theoph |>
  select(Subject, conc, Time)

#Finally, I will produced a processed data CSV file containing only the variables of interest

readr::write_csv(my_Theoph_threevar, here::here("data", "data_processed", "Theoph_threevar.csv"))
                 