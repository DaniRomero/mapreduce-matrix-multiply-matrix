source("productmv.R")
source("memlimit.R")

productmm <- function(matrizA, matrizB, dim, size){
  
  matrixA <- read.csv(file=matrizA, sep=",", header = F)
  matrixB <- read.csv(file=matrizB, sep=",", header = F)
  start <- 1
  result <- c()
  for (i in 1:dim){
    end <- start + (dim - 1)
    col <- productmv_vector(matrixA, matrixB$V3[start:end], dim, size)
    result <- cbind(result, col)
    start <- start + dim
  }
  return(result)
}