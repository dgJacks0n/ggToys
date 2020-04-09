#' Custom ggplot theme with bolded text for easier legibility
#'   
#' @param base_size Minimum font used in the plot
#' @param base_family Font family (e.g. )
#' @param base_theme (default ggplot2::theme_minimal): base on a different ggplot theme
#' 
#' @examples
#' \dontrun{
#'   # starting from a ggplot2 plot `myplot`
#'   myplot <- myplot + theme_dj()  # add theme with defaults
#'   
#'   myplot <- myplot + theme_dj(18) # increase base font size to 18 point
#'   
#'   # Change base theme to theme_dark (why would you do that?)
#'   myplot <- myplot + theme_dj(base_theme = ggplot2::theme_dark())
#' }
#' 
#' @export 
#' 

theme_dj <- function(base_size = 12, base_family = "",
                     base_theme = ggplot2::theme_minimal()) {
  
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




