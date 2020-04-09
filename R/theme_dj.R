#' Custom ggplot theme with bolded text for easier legibility
#' 
#' Use just like a built-in theme:
#' @examples
#'   myplot <- ggplot(...) + theme_dj(15)  
#'   
#' @param base_font (default 12): specifies the minimum font used in the plot
#' @param base_family: specifies the font family
#' @param base_theme (default theme_bw): base on a different ggplot theme
#' 
#' @export 

theme_dj <- function(base_size = 12, base_family = "",
                     base_theme = ggplot2::theme_bw()) {
  
  if(!(any(class(base_theme) == "theme") & 
              any(class(base_theme) == "gg"))) {
    stop("base_theme argument must be a ggplot theme")
  }
  
  # defer to font size in base_theme IFF base_size is at default
  if( base_size == 12 & base_theme$text$size != base_size){
    base_size <- base_theme$text$size
  }
  
  
  # update theme elements
  base_theme +
    ggplot2::theme( text = ggplot2::element_text(size = base_size),
           axis.text = ggplot2::element_text(size=ggplot2::rel(1)),
           axis.title = ggplot2::element_text(face="bold", size=ggplot2::rel(1),  vjust = 0.1, hjust=0.5),
           plot.title = ggplot2::element_text(lineheight=1, face="bold", size = ggplot2::rel(1.25), hjust = 0.5),
           legend.text = ggplot2::element_text(size=ggplot2::rel(1)),
           legend.title = ggplot2::element_text(size=ggplot2::rel(1), face="bold"),
           strip.text = ggplot2::element_text(face="bold", size=ggplot2::rel(1.0)),
           legend.key = ggplot2::element_rect(colour = NA)
    )
  
}




