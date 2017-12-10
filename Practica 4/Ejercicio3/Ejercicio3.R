#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 3
#///////////////////////////////////////////////////////////////////////////////////////

#Construimos una funcion que nos da el cdf evaluado en x de una RV Poisson con parametro lambda
FPoisson<-function(x,lambda){
      #p0 es la probabilidad cuando x=0
      p0<-exp(-1*lambda)
      px<-p0
      #sum guarda la suma acumulada de las probabilidades
      sum<-p0
      if(x==0) return(sum)
      for(i in 1:x){
        #Calculamos la probabilidad para x+1
        px<-lambda*px/i
        sum<-sum+px
      }
      #Retornamos la suma acumulada de probabilidades que equivale al cdf evaluado en x
      return(sum)
}

#Usamos la funcion definida anteriormente para generar de manera aleatoria un valor con 
#probabilidad adecuada a una distribucion de Poisson 
F.rand<-function(lambda){
  u<-runif(1)
  x<-0
  while(FPoisson(x,lambda)<u){
    x<-x+1
  }
  return(x)
}


#Mejoramos la funcion anterior para no tener que llamar a la funcion FPoisson cada vez que
#se analiza el bucle while actualizando las variables p.x y F.x
F.rand_v2<-function(lambda){
  u<-runif(1)
  x<-0
  p.x<-exp(-1*lambda)
  F.x<-p.x
    while(F.x<u){
      x<-x+1
      p.x<-p.x*lambda/(x)
      F.x<-F.x+p.x
    }
  return(x)
}


