# test script for lut5color


library(ggplot2)
library(ggToys)

plotdata <- diamonds


ggplot(plotdata, aes(x = carat, y = table, color = price)) +
  geom_point() +
  lut5color(breaks = c(1, 1e4, 2e4))
