#' Return number of cats with a given name or partial name
#'
#' @param x the name or partial name of a cat
#' @return a dataframe with the matching names and number of cats
#' @examples
#' name_cat("nut") #returns cat with "nut" in their names
#' @export

name_cat <- function(x){

  library(tidyverse)

  cats %>%
    mutate(name = tolower(name)) %>%
    filter(grepl(x, name)) %>%
    group_by(name) %>%
    tally() %>%
    arrange(-n)

}
