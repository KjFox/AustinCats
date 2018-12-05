#' Create bar graph from results of name_cat function
#'
#' @param df a dataframe from the name_cat function
#' @return a bar graph showing frequency of names
#' @examples
#' graph_cat(name_cat("nut"))
#' @export

graph_cat <- function(df){

  library(tidyverse)

ggplot(df, aes(x=reorder(name,-n),y=n)) + geom_col() +
  xlab("Name of Cat") + ylab("Frequency") +
  theme(
    axis.text.x = element_text(angle=45, hjust=1)
    )
}





