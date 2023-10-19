#' Greet a user
#'
#'This function greets a user if you tell it their name. You can optionally ask it to recommend a random baked good from the baked_goods dataset.
#'If you ask for a baked good, it will tell you the amount of an ingredient you'll need to make it and the recipe number for reference.
#'Super optionally, you can ask for all ingredients from the full recipe.
#'Defaults: the function will greet "User" and not include any baking recommendations.
#'
#' @param name character; name of user
#' @param bakedgood logic; true or false
#' @param fullrecipe logic; true or false
#'
#' @return nothing! just prints a greeting, and if you want, a suggestion for a baked good & ingredient needed to make it. If you're feeling ambitious, ask it for the full recipe
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
#' #Supply user name, ask for recommendation, and ask for full recipe (fullrecipe = TRUE)
#' greet(name = "Annie", bakedgood = "TRUE", fullrecipe = "TRUE")
#'
#'
greet <- function(name = "User", bakedgood = "FALSE", fullrecipe = "FALSE"){
  paste("Hello ", cli::col_cyan(name), "!", sep = "")
  if(bakedgood == TRUE & fullrecipe == FALSE){
    rowidx <- sample(1:length(baked_goods$type), 1)
    paste("Hello ", cli::col_cyan(name), "! You should make a ",
          baked_goods[rowidx,1], " with ",
          baked_goods[rowidx,4], " cups of ",
          baked_goods[rowidx,3], ".", " This is recipe ",
          baked_goods[rowidx,2], ".",
          sep ="")
    }
  else if(bakedgood == TRUE & fullrecipe == TRUE){
    rowidx <- sample(1:length(baked_goods$type), 1)
    part1 <- paste("Hello ", cli::col_cyan(name), "! You should make a ",
          baked_goods[rowidx,1], " with ",
          baked_goods[rowidx,4], " cups of ",
          baked_goods[rowidx,3], ".", " This is recipe ",
          baked_goods[rowidx,2], ".", sep = "")
    part2 <- paste("This recipe also uses the the following ingredients:")
    part3 <- paste(baked_goods[which(baked_goods$recipe_id == baked_goods[rowidx,2] & baked_goods$ammount_cups > 0),3:4], sep ="/n")
    cat(part1,part2,part3,sep = "/n")
    }
  else{paste("Hello ", cli::col_cyan(name), "!", sep = "")}
}

