#' Greet a user
#'
#'This function greets a user if you tell it their name.
#'
#' @param name character; name of user
#'
#' @return nothing! just prints a greeting
#' @export
#'
#' @examples
#' #Default use
#' greet()
#'
#' #Supply user name
#' greet("Annie")
#'
greet <- function(name = "User"){
  cat("Hello", name, "!", sep = " ")
}

