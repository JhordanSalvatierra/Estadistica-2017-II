#El siguiente programa usa el Método de Bisección para hallar la raíz de la ecuación: e^x-1=0
#Tomando como límites los valores de -10 y 10. Dado que el método halla una aproximación, debemos determinar una tolerancia de error definida por nosotros. En este caso tomaremos 10^-8. Este código usa las funciones all.equal y isTRUE. Escribe el código en R.

f<-function(x){ #Creamos una función f que tome como argumento x
  return(exp(x)-1) #Devolvemos e^x-1
}

limite_inferior <- -10 #Limite inferior para el Método
limite_superior <-10   #Limite superior para el Método

#Mientras haya una diferencia mayor o igual a 10^-8, iteramos
while(limite_superior - limite_inferior >= 10^-8){
  punto_medio <- (limite_inferior + limite_superior)/2  #Tomamos el punto medio
  if(f(punto_medio <0)){ #Si es negativo, la raiz en [punto_medio,limite_superior]
    limite_inferior <-punto_medio
  }
  else{ #Si no, la raiz está en [limite_inferior,punto_medio]
    limite_superior <- punto_medio
  }
}
#Imprimimos al estilo del lenguaje C el valor aproximado de la raíz
sprintf("La raíz aproximada es %.8f \n",limite_superior)


