This project provides a basic pipeline for unzipping, processing, and visualizing a Netflix dataset containing information on shows and movies. The code covers everything from data loading and cleaning to exploratory data analysis and visualization.
# Project Structure

├── netflix_data.zip          # Zipped dataset (must be present in the working directory)
├── netflix_shows_movies.csv # Output CSV file after extraction and renaming
├── script.py                 # Python script (code you provided)
└── README.md                 # This documentation

# Features

Unzips the provided Netflix dataset and renames the extracted CSV file

Loads the dataset into a Pandas DataFrame

Handles missing values by filling with a default value

Provides statistical summaries using .describe()

Explores:

Show types (e.g., Movie, TV Show)

Top genres from the listed_in column

Distribution of ratings

Visualizes:

Bar chart of the top 10 genres

Histogram of rating distribution (with KDE)

# Requirements

pip install pandas numpy matplotlib seaborn

# Data Requirements

Place the netflix_data.zip file in the project root directory.

The ZIP file must contain one .csv file with Netflix show/movie data.

Required columns:

show_id

release_year

type

listed_in

rating (optional for some plots)


# Usage

python script.py

# Sample Output
Console output includes:

Summary statistics

Unique show types

First few rows of the dataset

Visuals:

Top 10 genres bar chart

Ratings distribution histogram

For R

# Requirement

install.packages(c("ggplot2", "readr", "dplyr", "tidyr", "stringr", "tidyverse"))
install.packages("tidyverse")

# Data Set

Ensure that the file netflix_shows_movies.csv is present in your working directory. The dataset must include at least the following columns:

type – Movie or TV Show

release_year – Year of release

country – Country of production

listed_in – Genre/category tags (comma-separated)

# Visualizations

Movies vs TV Shows

Visual comparison of the number of Movies and TV Shows.

Content Release by Year

Histogram showing how much content was released each year.

Top 10 Producing Countries

Horizontal bar chart of countries with the highest number of shows/movies.

Top 10 Genres

Genre extraction and ranking based on frequency.

# Running the Script

To run the analysis:

Open R or RStudio.

Set your working directory to the folder containing netflix_shows_movies.csv.

Run the script line by line or source the full script.
source("analysis.R")

