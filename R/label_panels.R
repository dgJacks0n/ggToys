#' Label ggplot facets by panel letter (A, B,..)
#' 
#' Create ggplot facet labels that mimic standard publication
#' figure labels (A, B, etc) for ease of citation in documen text.
#' Optionally append facet title.
#' 
#' This works for facet_wrap.  Does not work for 2-D grids.
#' 
#' Currently value for show.value is pooled from parent namespace
#' and values for label_key are pushed back.  Not a good way...
#' Need to define a namespace (class?) with set and get methods?

make_labelstring <- function(mypanels) {
  mylabels <- sapply(mypanels, function(x) {LETTERS[which(mypanels == x)]})
  
  if(exists("show.value") && show.value) {
    mylabels <- paste(mylabels, names(mylabels), sep = ": ")
  }
  else {
    # if a label_key var exists, populate it with panel =value pairs
    if(exists("label_key")) {
      my_label_key <- names(mylabels)
      names(my_label_key) <- unname(mylabels)
      label_key <<- my_label_key
    }
  }
  return(mylabels)
}


label_panels <- ggplot2::as_labeller(make_labelstring)