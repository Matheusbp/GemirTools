#' @title Function for evaluate a string
#'
#' @description Function that takes your strings and evaluate them, it is useful to
#' name variables within a for loop. The sky is the limit for this function.
#'
#' @param suastring Simple character object or a vector of strings (characters).
#' @return The output of the function evaluated in suatring vector.
#'
#' @note It is necessary to add <<- instead of <- when using evalparsetext function to
#' add information to a object (see example).
#'
#' @export
#' @examples
#' rm(outp)
#' evalparsetext(c("outp <<- 1"))
#' print(outp)


evalparsetext <- function(suastring){
  eval(parse(text = paste0(c(suastring))))
}