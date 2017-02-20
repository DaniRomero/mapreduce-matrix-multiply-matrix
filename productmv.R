source("MapReduce.R")
source("indexes.R")

productmv <- function(matrizA, vectorB, dim, size){
  matrixA <- read.csv(file=matrizA, sep=",", header = F)
  matrixB <- read.csv(file=vectorB, sep=",", header = F)
  return(productmv_vector(matrixA, matrixB$V2, dim, size))
}

productmv_vector <- function(matrixA, vectorB, dim, size){

  cant <- nrow(matrixA)
  result <- c()  
  reduceVector <- c()
  
  for (j in 1:dim){ #Recorremos por fila la matriz A    
    mapVector <- c()
    index <- indexes(dim, j) #Indices de la fila que estamos recorriendo
    for (k in 1:dim){
      #Lets map
      mapVectorAux <- map(matrixA$V3[index[k]],vectorB[k]) #Llamamos la funcion map para que realice el producto fila columna
      mapVector <- c(mapVector, mapVectorAux)
    }
    reduceVector <- rbind(reduceVector,mapVector)
  }#End row for
  #Lets reduce
  result <- reduce(reduceVector)
  return(result)
}





