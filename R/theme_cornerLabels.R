#' Modified theme for corner labels
#' 
#' Place panel labels in top left corner of plot; removes facet strip background and left-justifies labels
#'
#' @param base_font (default 12): specifies the minimum font used in the plot
#' @param base_family: specifies the font family
#' @param base_theme (default theme_bw): base on a different ggplot theme 
#'
#' @export

theme_cornerLabels <- function(base_size = 12, base_family = "", 
                               base_theme = ggplot2::theme_bw()) {
  theme_dj(base_size = base_size, base_family = base_family,
           base_theme = base_theme) +
    ggplot2::theme(strip.text = ggplot2::element_text(hjust = 0),
          strip.background = ggplot2::element_blank(),
          strip.placement = "outside")
}
    