library(ggplot2)
library(readr)

library(tidyverse)

df <- read_csv("netflix_shows_movies.csv")

ggplot(df, aes(x = type)) +
  geom_bar(fill = "#2E86AB") +
  labs(title = "Number of Movies vs TV Shows", x = "Type", y = "Count") +
  theme_minimal()

ggplot(df, aes(x = release_year)) +
  geom_histogram(binwidth = 1, fill = "#E27D60") +
  labs(title = "Netflix Content Released by Year"
  , x = "Release Year", y = "Count") + # nolint
  theme_minimal()

library(dplyr)

df %>%
  filter(!is.na(country)) %>%
  count(country, sort = TRUE) %>%
  top_n(10) %>%
  ggplot(aes(x = reorder(country, n), y = n)) +
  geom_col(fill = "#85DCBA") +
  coord_flip() +
  labs(title = "Top 10 Countries by Content Production",
   x = "Country", y = "Count") +
  theme_minimal()

library(tidyr)
library(stringr)

df %>%
  separate_rows(listed_in, sep = ", ") %>%
  count(listed_in, sort = TRUE) %>%
  top_n(10) %>%
  ggplot(aes(x = reorder(listed_in, n), y = n)) +
  geom_col(fill = "#C38D9E") +
  coord_flip() +
  labs(title = "Top 10 Genres", x = "Genre", y = "Count") +
  theme_minimal()
  
