map <- function(a,b){
  return(a*b)
}

reduce <- function(vector){
  result <- c()
  for (i in 1:nrow(vector)){
    aux <- sum(vector[i,])
    result <- c(result,aux)
  }
  return(result)
}
