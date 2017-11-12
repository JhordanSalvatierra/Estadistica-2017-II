#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 1

#(a)Aplicamos un bucle dentro de un bucle para crear la funcion 

funA<-function(n){
  suma<-0
  for(r in 1:n){
    for(s in 1:r){
      suma<-suma+(s^2)/(10+4*r^3)
    }
  }
  return(suma)
}

#Ejemplo
funA(1000)

#Medimos el tiempo que tarda la funcion para n=1000
system.time(f1(1000))
#Tarda aproximadamente 0.7 segundos
#Para un valor n=10000 tarda mas de un minuto

#(b)Usamos las funciones row() y col() para generar una matriz cuyos elementos posean los
#sumandos de la doble sumatoria.

funB<-function(n){
  #Inicializamos una matriz con tamaño nxn
  m<-matrix(0,nr=n,nc=n)
  
  #Realizamos las operaciones adecuadas con los elementos de la matriz col(m) y row(m) para 
  #obtener una matriz y que contiene ciertos elementos cuya suma sea la respuesta requerida
  y<-row(m)^2/(10+4*(col(m)^3))
  
  #Filtramos los elementos de y cuya suma nos da el resultado adecuado. row(y)<=col(y) equivale
  #a los limites de las sumatoria pedida
  return(sum(y[row(y)<=col(y)]))
}

#Ejemplo
funB(1000)

#Notamos que la nueva función es mucho mas rapida que la anterior
#Tarda aproximadamente 0.2 segundos.
system.time(funB(1000))

#Para un valor de n=10000 tarda aproximadamente 15 segundos

#(c)Ahora usamos la funcion outer()

funC<-function(n){
  x<-1:n
  y<-1:n
  m<-outer(x^2,10+4*y^3,"/")
  return(sum(m[row(m)<=col(m)]))
}

#Ejemplo
funC(1000)
#Tarda aproximadamente 0.2 segundos
system.time(funC(1000))
#Para un valor de n=10000 tarda aproximadamente 5 segundos, menos que funB() y mucho menos que 
#funA()
