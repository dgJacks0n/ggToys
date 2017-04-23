# test script for lut5color

# library(ggtoys)

library(ggplot2)

plotdata <- diamonds


ggplot(plotdata, aes(x = carat, y = table, color = price)) +
  geom_point() +
  lut5color()