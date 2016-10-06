#' Label ggplot facets by panel letter (A, B,..)
#' 
#' Create ggplot facet labels that mimic standard publication
#' figure labels (A, B, etc) for ease of citation in documen text.
#' Optionally append facet title.
#' 

# this works for a single facet.  need to extend for grids
# need to figure out how to pass argument to show value
make_labelstring <- function(mypanels, show.value = TRUE) {
# make_labelstring <- function(mypanels) {

  mylabels <- sapply(mypanels, function(x) {LETTERS[which(mypanels == x)]})
  
  # if(show.value) {
  #   mylabels <- paste(mylabels, names(mylabels), sep = ": ")
  # }

  return(mylabels)
}
  

# label_panels <- ggplot2::as_labeller(make_labelstring)