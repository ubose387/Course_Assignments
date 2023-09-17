# load packages ----------------------------------------------------------------

library(tidyverse)
library(rvest)
library(here) 

# function: scrape_pac ---------------------------------------------------------

scrape_pac <- function(url) {
  
  # read the page
  page <- read_html(url)
  
  # Extract 1st table column as a list
  table_col <- page  %>%
    html_elements("tr :nth-child(1)") %>%
    html_text()
  
  # Similarly extract all table column values
  
  # Combine extracted lists to form a dataframe named pac with column headers

  # rename variables
  pac <- pac %>%
    # rename columns
    rename(
      name = ___ ,
      country_parent = ___,
      total = ___,
      dems = ___,
      repubs = ___
    )
  
   # fix name
  pac <- pac %>%
   # remove extraneous whitespaces from the name column
    mutate(name = ___)
  
  # add year
  pac <- pac %>%
    # extract last 4 characters of the URL and save as year
    mutate(year = ___)

  # return data frame
  pac
  
}

# test function ----------------------------------------------------------------
url_2020 <- "___"
pac_2020 <- scrape_pac(___)

url_2018 <- "___"
pac_2018 <- scrape_pac(___)

url_1998 <- "___"
pac_1998 <- scrape_pac(___)

# list of urls -----------------------------------------------------------------

# first part of url
root <- "https://www.opensecrets.org/political-action-committees-pacs/foreign-connected-pacs?cycle="

# second part of url (election years as a sequence)
year <- seq(from = 2000, to = 2022, by = 2)

# construct urls by pasting first and second parts together
urls <- paste0(root, year)

# map the scrape_pac function over list of urls --------------------------------

pac_all <- ___(___, ___)

# write data -------------------------------------------------------------------

write_csv(___, file = here::here("data/pac-all.csv"))
