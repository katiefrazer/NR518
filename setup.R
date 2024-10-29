# a script for installing (if needed) and loading packages for this project

packageLoad <- function(x) {
  for (i in 1:length(x)) {
    if (!x[i] %in% installed.packages()) {
      install.packages(x[i])
    }
    library(x[i], character.only = TRUE)
  }
}

packages <- c("tidyverse", # ggplot & tidy functions
              "readxl", # for reading in excel sheets
              "rmarkdown", # rmarkdown
              "ggdark", # dark ggplot themes
              "viridis"
)

packageLoad(packages)
