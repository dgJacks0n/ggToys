#' Reverse log transform for values < 1
#' @examples
#'   myplot <- myplot + scale_y_continuous(trans=reverselog_trans(base = 2)) 
#'   
#' @param base (default 10): base for log tranformatin


reverselog_trans <- function(base = 10) {
  trans <- function(x) -log(x, base)
  inv <- function(x) base^(-x)
  scales::trans_new(paste0("reverselog-", format(base)), trans, inv, 
            scales::log_breaks(base = base), 
            domain = c(1e-100, Inf))
}
