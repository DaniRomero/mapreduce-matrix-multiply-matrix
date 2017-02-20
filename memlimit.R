calculateMemLimitMV <- function(n, size){ 
  if (size == -1) {
    return (n)
  }
  limit <- (n * n +  n) * 3 + n
  while (limit > size){
    n <- n - 1
    limit <- (n * n +  n) * 3 + n
  }
  if (n < 0) {
    n <- 0
  }
  return(n)  
}

calculateMemLimitMM<- function(n, size){ 
  if (size == -1) {
    return (n)
  }
  limit <- (n * n) * 6 + n * n
  while (limit > size){
    n <- n - 1
    limit <- (n * n) * 6 + n * n
  }
  if (n < 0) {
    n <- 0
  }
  return(n)
}