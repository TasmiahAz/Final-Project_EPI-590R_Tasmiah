library(here)
library(readr)

#Reading in and saving the pokemon dataset using {here} and {readr} package

pokemon_df <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2025/2025-04-01/pokemon_df.csv')

write_rds(pokemon_df, here("data", "pokemon_df.rds"))

