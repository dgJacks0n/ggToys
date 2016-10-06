# test script for label_panels

library(ggplot2)

data("diamonds")


# create a faceted plot
ggplot(data = diamonds, aes(x = depth, y = price)) +
  geom_point() +
  # facet_grid(clarity ~ cut, labeller = label_panels)
  facet_wrap(~cut, labeller = label_panels) +
  theme(strip.text = element_text(hjust = -0),
        strip.background = element_blank())