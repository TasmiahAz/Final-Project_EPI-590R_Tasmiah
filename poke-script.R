#Reading in and saving the pokemon dataset using {here} and {readr} package

library(here)
library(readr)

pokemon_df <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2025/2025-04-01/pokemon_df.csv')

write_rds(pokemon_df, here("data", "pokemon_df.rds"))


#Adding Capitalized Text Columns
library(stringr)

pokemon_df_cap <- mutate(
	pokemon_df,
	pokemon_cap = str_to_title(pokemon),
	type_1_cap = str_to_title(type_1),
	type_2_cap = str_to_title(type_2),
	egg_group_1_cap = str_to_title(egg_group_1),
	egg_group_2_cap = str_to_title(egg_group_2)
)

#saving the new pokemon dataset
write_rds(pokemon_df_cap, here("data", "pokemon_df_cap.rds"))

