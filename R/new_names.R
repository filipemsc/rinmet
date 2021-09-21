#' Function destined to change names
#'
#'@param data Data
#'@param oldname Old name
#'@param newname New name
#'

new_names <- function(data, oldname, newname){
  x = grep(oldname, names(data))

  if(length(x) > 1) {
    return(names(data))
  }

  else{
    names(data)[x] <- newname
    return(names(data))
  }
}
