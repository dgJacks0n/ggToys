# test script for label_panels

library(ggplot2)

data("diamonds")

source("./R/custom_themes.R")

label_key <- c() # to hold label-value pairs
show.value <- FALSE # don't show values in plot

# create a faceted plot
p <- ggplot(data = diamonds, aes(x = depth, y = price)) +
  geom_point() +
  # facet_grid(clarity ~ cut, labeller = make_labelstring, margins = TRUE) +
  facet_wrap(~cut, labeller = label_panels, 
             strip.position = "top") +
  theme_cornerLabels()
 
print(p)

# label_key adds values to label_key
print(label_key)

# create another plot with values
show.value <- TRUE
q <- ggplot(data = diamonds, aes(x = price)) +
  geom_histogram() +
  facet_wrap(~cut, labeller = label_panels) +
  theme_cornerLabels(10)

print(q)