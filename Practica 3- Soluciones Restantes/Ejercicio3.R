#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 3
#///////////////////////////////////////////////////////////////////////////////////////
#Primero definimos la funcion que calcula la media geometrica de un vector numerico
media_geometrica<-function(x){
  return(exp(mean(log(x))))
}
#Luego definimos la funcion geolista la cual calculara la media geometrica de todos los elementos
#de una lista segun las indicaciones dadas
geolista<-function(x){
  #guardamos las medias geometricas en una lista "y"
  y<-list(NULL)
  #Analizamos si los elementos de la lista son vectores o matrices
  for(i in 1:length(x)){
    #En caso de que sea un vector, calculamos la media geometrica directamente con la funcion
    #media_geometrica()
    if(is.vector(x[[i]])){ 
      y[[i]]=media_geometrica(x[[i]])}
    #En caso de que sea una matriz analizamos las filas de la matriz de manera individual
    #haciendo uso de la funcion apply() con el argumento MARGIN=1 para filas
    else if(is.matrix(x[[i]])){
      #apply() nos devuelve un vector con los resultados de la funcion media_geometrica()
      #aplicado a cada fila de la matriz
      y[[i]]=apply(x[[i]],MARGIN=1,media_geometrica)
    }
  }
  #Retornamos la lista pedida
  return(y)
}

#Ejemplo 1
f4<-list(1:3,matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))
f4

geolista(f4)

#Ejemplo 2
f5<-list(1:9,matrix(1:9,1,9),matrix(1:9,9,1),matrix(1:9,3,3))
f5

geolista(f5)
