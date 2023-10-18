#' Greet a user
#'
#'This function greets a user if you tell it their name. You can optionally ask it to recommend a random baked good from the baked_goods dataset.
#'If you ask for a baked good, it will tell you the amount of an ingredient you'll need to make it and the recipe number for reference.
#'Defaults: the function will greet "User" and not include any baking recommendations.
#'
#' @param name character; name of user
#' @param bakedgood logic; true or false
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
#' #Supply user name and ask for a baked good recommendation (bakedgood = TRUE)
#' greet(name = "Annie", bakedgood = TRUE)
#'
#'
greet <- function(name = "User", bakedgood = "FALSE"){
  paste("Hello ", cli::col_cyan(name), "!", sep = "")
  if(bakedgood == TRUE){
    rowidx <- sample(1:length(baked_goods$type), 1)
    paste("Hello ", cli::col_cyan(name), "! You should make a ",
          baked_goods[rowidx,1], " with ",
          baked_goods[rowidx,4], " cups of ",
          baked_goods[rowidx,3], ".", " This is recipe ",
          baked_goods[rowidx,2], ".",
          sep ="")
  }
  else{paste("Hello ", cli::col_cyan(name), "!", sep = "")}
}

