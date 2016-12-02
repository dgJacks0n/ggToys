#' Modified theme for corner labels
#' 
#' Removes facet strip background and left-justifies labels

theme_cornerLabels <- function(base_size = 12, base_family = "", 
                               base_theme = theme_bw()) {
  theme_dj(base_size = base_size, base_family = base_family,
           base_theme = base_theme) +
    theme(strip.text = element_text(hjust = 0),
          strip.background = element_blank(),
          strip.placement = "outside")
}
    