#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 1
#///////////////////////////////////////////////////////////////////////////////////////

f3<-list("a",c("b","c","d","e"),"f",c("g","h","i"))
f3

#Creamos la funcion que agregara un signo de exclamacion al final de cada elemento de un vector
funcion<-function(x){
  y<-paste(x,"!",sep="")
  return(y)
}

#Aplicamos la funcion lapply a la lista de ejemplo, la cual ejecutara la funcion para todos los
#elementos de la lista f3
lapply(f3,funcion)



