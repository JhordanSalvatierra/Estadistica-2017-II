#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 2

#///////////////////////////////////////////////////////////////////////////////////////
#(a)
 #Primero definimos una matriz de prueba X que contiene filas sin valores NA
X<-matrix(c(NA,c(1:7)),nrow=8,ncol=6,byrow = TRUE)
X

#Tambien creamos una matriz la cual no tiene filas sin valores NA
Y<-matrix(c(NA,c(1:3)),nrow=8,ncol=6,byrow = TRUE)
Y

#Creamos una función que haga lo pedido
f<-function(X){
#Analizamos cada fila de X, donde i tiene el numero de fila analizada
flag<-0
for(i in 1:dim(X)[2]){
  #Verificamos si NA se encuentra en cada fila analizada con la expresion NA %in% X[i,]
  #En caso no se encuentre el valor de NA en la fila analizada, detenemos el bucle y entonces
  #el valor de i nos indicara el numero de fila en el que se cumple por primera vez que no hay
  #un valor de NA
  if(!(NA %in% X[i,])){
    #La variable flag nos indicara si de verdad se encontro una fila sin valores NA
    flag<-1
    break; 
  } 
}
if(flag==1) cat("La primera fila que no contiene un valor NA es la fila ",i) else cat("Todas las filas de la matriz contienen un valor NA")
}

#Verificamos la funcion probando con la matriz X
f(X)
#Verificamos la funcion con la matriz Y
f(Y)



