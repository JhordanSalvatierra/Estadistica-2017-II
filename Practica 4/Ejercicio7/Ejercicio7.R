#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 7
#///////////////////////////////////////////////////////////////////////////////////////
#Para este problema, usamos como apoyo las funciones dnorm() y pnorm() que equivalen a 
#las funciones de densidad y distribucion respectivamente de una distribucion normal.

#Hacemos uso de un algortimo de busqueda de raices con el metodo de Newton-Raphson

funcion_quantil<-function(p)
{
#Numero muy pequeño
small<-1e-7
#Empezamos con el valor Xn=0
Xn=0
#100 iteraciones
for(i in 1:100){
  #Calculamos la diferencia con la probabilidad buscada
  fx<-pnorm(Xn,0,1)-p
  x<-Xn-fx/dnorm(Xn,0,1)
  #Verificamos que el valor de fx este cerca al valor de p
  if(abs(fx)<small){
   return(x)
  }
  #Actualizamos el valor de Xn en caso pnorm(Xn,0,1) no este cerca al valor de p buscado
  Xn<-x
}
}

#Probamos la funcion para p=0.975
funcion_quantil(0.975)
funcion_quantil(0.95)

#Usamos la funcion qnorm() la cual es la inversa de la funcion distribucion y comparamos
qnorm(0.975)
qnorm(0.95)
#Nos da el mismo resultado que funcion_quantil()

