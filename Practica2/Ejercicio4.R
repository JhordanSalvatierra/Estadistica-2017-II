#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 4

#Definimos un vector x de prueba que contiene los numeros del 10 al 20 en orden creciente
x<-10:20
x

#(a)///////////////////////////////////////////////////////////////////////////////////////

primero<-function(x,k=1){
  #Devolvemos los primeros k elementos de x
return(x[1:k])  
}

ultimo<-function(x,k=1){
  #Para esta funcion aplicamos la funcion rev() que nos devuelve el vector con elementos
  #en orden inverso
  return(rev(rev(x)[1:k]))
}

#Comprobamos las funciones
primero(x,8)
primero(x)

ultimo(x,6)
ultimo(x)

#(b)///////////////////////////////////////////////////////////////////////////////////////

primeroV2<-function(x,k=1){
  #Devolvemos los primeros k elementos de x
  if(k>length(x)) return(x)
  else return(x[1:k])  
}

#Probamos la nueva funcion
primeroV2(x,100)

ultimoV2<-function(x,k=1){
  #Devolvemos los primeros k elementos de x
  if(k>length(x)) return(x)
  else return(rev(rev(x)[1:k]))  
}

#Probamos la nueva funcion
ultimoV2(x,100)
#(c)///////////////////////////////////////////////////////////////////////////////////////

primeroV3<-function(x,k=1){
  #Devolvemos los primeros k elementos de x
  if(k>length(x)) return(c(x,rep(NA,k-length(x))))
  else return(x[1:k])  
}

#Probamos la nueva funcion
primeroV3(x,15)

ultimoV3<-function(x,k=1){
  #Devolvemos los primeros k elementos de x
  if(k>length(x)) return(c(x,rep(NA,k-length(x))))
  else return(rev(rev(x)[1:k])) 
}

#Probamos la nueva funcion

ultimoV3(x,13)
