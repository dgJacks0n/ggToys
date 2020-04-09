#' Reverse log transform for values < 1
#' @param base (default 10): base for log tranformation
#' 
#' @examples
#' \dontrun{
#'   # add reverse log tranformation to ggplot2 plot
#'   myplot <- myplot + scale_y_continuous(trans = reverselog_trans())
#'   
#'   # change transformation to base 2
#'   myplot <- myplot + scale_y_continuous(trans=reverselog_trans(2)) 
#' }
#' 
#' @export
#' 


reverselog_trans <- function(base = 10) {
  trans <- function(x) { (-1 * log(x, base))}
  
  inv <- function(x) { base^(-1 * x) }
  
  scales::trans_new(name = paste0("reverselog-", format(base)), 
                    transform = trans, 
                    inverse = inv, 
                    breaks = scales::breaks_log(base = base), 
                    domain = c(1e-100, Inf))
}
