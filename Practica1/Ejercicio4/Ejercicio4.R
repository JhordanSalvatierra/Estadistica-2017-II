# Nombre : Jhordan Salvatierra Ramos 20112152A
# Ejercicio 4

#************************************************************************************

#Definimos la función
tst4<-function(x){
  if(x<2) "muy negativo"
  else if(x<1) "cercano a cero"
  else if(x<3) "in [1,3)"
  else "large"
}

#a) Corremos la función para x=0
tst4(0)

#Corremos la función para x=Inf
tst4(Inf)

#Corremos la función para x=2
tst4(2)

#b) Definimos una nueva funcion Tst4()

#aplicamos la funcion ifelse dentro de otra funcion ifelse para simular la funcion tst4
Tst4<-function(x){
  ifelse(x<2,"muy negativo",ifelse(x<1,"cercano a cero",ifelse(x<3,"in [1,3)","large")))
}

#Probamos nuestra nueva función
Tst4(c(Inf,3:5))

