library(here)
library(tidyverse)
library(readr)

readr::write_csv(Theoph, here::here("data", "data_raw", "Theoph.csv"))

my_Theoph <- readr::read_csv(here::here("data","data_raw","Theoph.csv"))

my_Theoph_threevar <- my_Theoph |>
  select(Subject, conc, Time)

readr::write_csv(my_Theoph_threevar, here::here("data", "data_processed", "Theoph_threevar.csv"))
                 