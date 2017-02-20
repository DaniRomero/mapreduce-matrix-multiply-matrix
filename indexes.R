indexes <- function(dim, start){ #Funcion que retorna los indices del Data Frame para acceder directamente a los elementos de las filas 
  indexs <- c()
  i <- 0
  aux <- 0
  for (i in 1:dim){
    indexs <- c(indexs, dim*aux+start)
    aux <- aux + 1
  }
  return(indexs)
}