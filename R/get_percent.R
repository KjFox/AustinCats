#' Get a percentage
#'
#' @param a A percentage, rounded to one space
#' @return The percent of \code{a given number, case, etc}
#' @examples
#' get_percent(a given number from data set)
#' @export

get_percent<- function(x){
  out <- percent <- round(x * 100, digits =1)
  result <- paste(percent, "%", sep = "")
  return(result)
}

