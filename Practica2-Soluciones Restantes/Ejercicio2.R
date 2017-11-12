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
if(flag==1) {cat("La primera fila que no contiene un valor NA es la fila ",i)}
else {cat("Todas las filas de la matriz contienen un valor NA")}
}

#Verificamos la funcion probando con la matriz X
f(X)
#Verificamos la funcion con la matriz Y
f(Y)

#///////////////////////////////////////////////////////////////////////////////////////
#(b.1)Define que significa que una funcion R pueda ser vectorizada o que cumple la vectorizacion.
#Justifica con ejemplos en R

#Una funcion puede usar las propiedades de la vectorizacion en lugar de aplicar bucles y asi 
#mejorar su eficiencia

#Ejemplo de una funcion no vectorizada

elevar_al_cuadrado<- function(x) {
  vector_salida <- vector("numeric",length(x))
  for(i in 1:length(x)){
    vector_salida[i] <- x[i]^2
  }
  return(vector_salida)
}
elevar_al_cuadrado(1:5)

#Ahora generamos una funcion que usa las propiedades de la vectorizacion
elevar_al_cuadrado_v2<-function(x){
  return(x^2)
}

#Nos genera el mismo resultado
elevar_al_cuadrado_v2(1:5)

#///////////////////////////////////////////////////////////////////////////////////////

#(b.2)Define que significa que una funcion obedezca la regla de reciclaje.Justifica con ejemplos en R

#La regla de reciclaje indica que si se realiza una operación con 2 vectores operandos de 
#diferentes tamaños, el operando mas corto reciclara sus valores(de izquierda a derecha) 
#hasta que ambos operandos tengan el mismo tamaño.

#Ejemplo

#Creamos 2 vectores de distinta longitud
x<-1:5
y<-seq(10,100,by=10)

#Definimos una funcion simple de suma de vectores
suma<-function(x,y){
  return(x+y)
}

#Vemos que f1 repite los valores del vector "x" 2 veces para igualar la longitud del vector y
suma(x,y)
