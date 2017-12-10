#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 2
#///////////////////////////////////////////////////////////////////////////////////////
#Usamos la libreria MASS que tiene la funcion fractions(), la cual nos permite visualizar una
#fraccion indivisible
library(MASS)

#Escaneamos los datos de prueba y guardamos los datos como character para no perder la expresion binaria
data<-scan("Entrada_problema_1.txt",what=character())

#Guardamos el numero total de pruebas
total<-as.integer(data[1])

#Analizamos cada subconjunto de datos (N,K y la expresion binaria)
for(n in 0:(total-1))
{
N<-as.integer(data[3*n+2])
K<-as.integer(data[3*n+3])
binario<-data[3*n+4]
contador<-0
for(i in 1:N){
  for(j in 1:N){
    if(abs(i-j)<=K && as.integer(substr(binario,i,i))==1 && as.integer(substr(binario,j,j)==1))
    {
      #Incrementamos el contador cada vez que se encuentran indices que cumplan las condiciones
      contador=contador+1 
    } 
  }
}
#Imprimimos la fraccion indivisible que representa a la probabilidad de encontrar indices que 
#cumplan las condiciones requeridas
print(fractions(contador/(N*N)))
}

