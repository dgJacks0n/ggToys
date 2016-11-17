# Reverse log transform function for P values
# not sure if I need scales package
# usage example
# library(scales)
# myplot + scale_y_continuous(trans=reverselog_trans(10)) 
# argument 'base' - base of log to transform

reverselog_trans <- function(base = exp(1)) {
  trans <- function(x) -log(x, base)
  inv <- function(x) base^(-x)
  trans_new(paste0("reverselog-", format(base)), trans, inv, 
            log_breaks(base = base), 
            domain = c(1e-100, Inf))
}
