# theme_cornerLabels
# modification to theme_dj that left-justifies text
# and removes strip background

theme_cornerLabels <- function(base_size = 12, base_family = "") {
  theme_dj(base_size = base_size, base_family = base_family) %+replace%
    theme(strip.text = element_text(hjust = 0),
          strip.background = element_blank(),
          strip.placement = "outside")
}
    