#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 5
#///////////////////////////////////////////////////////////////////////////////////////
#a)Vector de ejemplo
v<-seq(2,56,by=3)
v

#Funcion que calcula r1 y r2 y los devuelve en una lista
tmpFn<-function(x){
  r1<-NULL
  r2<-NULL
  #Media de los elementos de x
  m<-mean(x)
  #Multiplicamos los elementos adecuados para hallar r1 y r2
  r1<-sum((x[-1]-m)*(x[-length(x)]-m))/sum((x-m)^2)
  r2<-sum((x[-1:-2]-m)*(x[-length(x):-(length(x)-1)]-m))/sum((x-m)^2)
  #Retornamos la lista conteniendo r1 y r2
  return(list(r1,r2))
}

tmpFn(v)

#///////////////////////////////////////////////////////////////////////////////////////
#b)Generalizamos la funcion anterior


tmpFnV2<-function(x){
  r<-1
  m<-mean(x)
  #k toma los valores de 1 a (length(x)-1)
  for(k in 1:(length(x)-1)){
  rk<-sum((x[seq(-1,-k)]-m)*(x[seq(-length(x),-(length(x)-k+1))]-m))/sum((x-m)^2)
  r<-c(r,rk)
  }
  return(r)
}

tmpFnV2(v)

#Tambien podemos evitar usar el bucle for utilizando sapply y definiendo una funcion 
#que se encarga de operar

operacion<-function(x,k){
  m<-mean(x)
  return(sum((x[seq(-1,-k)]-m)*(x[seq(-length(x),-(length(x)-k+1))]-m))/sum((x-m)^2))
}

tmpFnV3<-function(x){
  r<-1
  k<-1:(length(x)-1)
  r<-c(r,sapply(k,operacion,x=x))
  return(r)
}

tmpFnV3(v)
