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

#(c)

#Primero calculamos la suma de los elementos de cada columna y los guardamos en un vector
vector_de_sumas<-colSums(aMat)

#Luego hallamos que par de columnas tienen una suma de elementos mayor a 75
vector_de_indices<-NULL
for(i in 1:length(vector_de_sumas)){
  for(j in 1:length(vector_de_sumas)){
    if(vector_de_sumas[i]+vector_de_sumas[j]>75){
      vector_de_indices<-c(vector_de_indices,i,j)
    }
  }
}

#Obtenemos la matriz buscada con elementos en sus filas correspondientes a que pares de columnas
#tienen una suma de elementos mayor a 75
m<-matrix(vector_de_indices,ncol=2,byrow=TRUE)
m

#De no permitirse la repeticion de una columna, entonces las filas que contengan valores iguales
#se eliminarian