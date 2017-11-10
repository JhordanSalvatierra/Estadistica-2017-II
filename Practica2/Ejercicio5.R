#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 5

set.seed(75)
aMat<-matrix(sample(10,size=60,replace=T),nr=6)
aMat

#(a)Encontramos el numero de entradas en cada fila que son mayores que 4

for(i in 1:dim(aMat)[1]){
 cat("En la fila ",i," se encuentran ",sum(aMat[i,]>4)," elementos mayores a 4\n")
}
 
#(b)¿Que filas contienen exactamente dos ocurrencias del numero 7

for(i in 1:dim(aMat)[1]){
  if(length(which(aMat[i,]==7))==2){
    cat("La fila ",i," contiene exactamente 2 elementos igual a 7 ")
  }
}

