#' 5-color pseudocolor lookup
#' Color gradient for points, lines, etc
#'
lut5 <- function() {

  mycolors <- c("#0000FF", "#00FF00", "#FFFF00",
           "#FF7F00", "#FF0000")
  return(mycolors)
}

  lut5color <- function( colors = lut5(), ... ) {
    return(ggplot2::scale_color_gradientn(colors = colors, ...))
  }


lut5fill <- function( colors = lut5(), ... ) {
  return(ggplot2::scale_fill_gradientn(colors = colors, ...))
}

