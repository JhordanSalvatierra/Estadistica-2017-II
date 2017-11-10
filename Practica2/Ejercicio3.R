#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 3

#Definimos la funcion nth con parametros x y n
nth<-function(x,n){
  # Colocamos en un vector "y" las indices del vector x cuyos valores coinciden con TRUE
  y<-which(x,TRUE)
  # En el caso de que "y" tengo un numero de elementos mayor a n, retornamos y[n], el cual
  # es el indice correspondiente al n-esimo valor TRUE en x
  if(n<=length(y)) return(y[n])
  
  # En caso de que n sea mayor a la longitud de "y", se devolvera NA
  else return(NA)
}

#Probamos nuestra funcion usando el ejemplo mostrado en la hoja
x<-c(1,2,4,2,1,3)
#Nos retorna el valor de 6
nth(x>2,2)

#Nos retorna el valor de NA
nth(x>4,2) 
