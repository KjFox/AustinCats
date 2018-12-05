#' Return top N cat names
#'
#' @param N the number of names to return
#' @return a dataframe with the top N names and number of cats
#' @examples
#' top_cat(20) #returns top 20 cat names
#' @export

top_cat <- function(N){

  library(tidyverse)

  cats %>%
    filter(nchar(name)>0) %>%
    group_by(name) %>%
    tally() %>%
    arrange(-n) %>%
    head(N)

}
