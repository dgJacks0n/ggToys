# test script for label_panels

library(ggplot2)

data("diamonds")

source("../theme_dj/src/theme_dj.R")

label_key <- c() # to hold label-value pairs
show.value <- FALSE # don't show values in plot

# create a faceted plot
ggplot(data = diamonds, aes(x = depth, y = price)) +
  geom_point() +
  # facet_grid(clarity ~ cut, labeller = make_labelstring, margins = TRUE) +
  facet_wrap(~cut, labeller = label_panels) +
  theme_dj() +
  theme(strip.text = element_text(hjust = 0),
        strip.background = element_blank())
