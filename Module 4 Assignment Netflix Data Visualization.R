# Requirement 5: R Integration
# Load necessary libraries
library(ggplot2)
library(readr)

# Read the dataset (use double backslashes or forward slashes)
Netflix_shows_movies <- read_csv("C:/Users/user/Documents/netflix_data.csv")

# Replace NA values in the 'rating' column with "Not Rated"
Netflix_shows_movies$rating[is.na(Netflix_shows_movies$rating)] <- "Not Rated"

# Plot Ratings Distribution
ggplot(Netflix_shows_movies, aes(x = rating)) +
  geom_bar(fill = "steelblue") +
  theme_minimal() +
  labs(title = "Ratings Distribution", x = "Rating", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
