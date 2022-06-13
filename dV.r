# Importing Libraries
library(ggplot2)
library(dplyr)

# Importing Dataset
pdts <- read.csv("C:/Users/vidya.voleti/Downloads/Cleaned_products_review.csv")

# Viewing Dataset
View(pdts)

# Bar plot 
ggplot(data = pdts, aes(x =ratings, y =rating_percentage )) + 
  geom_bar(stat = "identity", fill = "purple") + 
  labs(x = "ratings", y = "rating_percentage", title = "Comparing Ratings")

# Scatter Plot 
ggplot(data = pdts, aes(x = ratings, y = rating_percentage)) + geom_point() + 
  labs(x = "ratings", y = "rating_percentage", title = "Comparing Ratings")

# Histogram 
ggplot(pdts, aes(x = rating_percentage)) + 
  geom_histogram(binwidth = 5, color = "black", fill = "blue")

# Line Plot 
ggplot(data = pdts, aes(x = ratings, y = rating_percentage)) + 
  geom_line(color = "red", size = 2) + 
  labs(x = "ratings", y = "rating_percentage", title = "Comparing Ratings")

ggplot(pdts, aes(x="", y=rating_percentage, fill=ratings)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

pie + coord_polar(theta = "y", start = 0)

summary(pdts)
boxplot(pdts)



