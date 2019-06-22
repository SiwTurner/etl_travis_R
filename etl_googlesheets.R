# load packages ----------------------------------------------------------------
library(tidyverse)
library(fs)
library(googlesheets)


# read google data -------------------------------------------------------------

etl_r <- gs_title("etl_r_travis_start")

etl_r_travis <- gs_read(etl_r)


etl_r %>%
        gs_copy(to = "etl_r_travis_end")