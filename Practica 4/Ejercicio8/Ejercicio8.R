#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 8
#///////////////////////////////////////////////////////////////////////////////////////

#data<-scan("Entrada_problema_4.txt",what=integer())

#Usamos el ejemplo mostrado en el enunciado del problema
data<-c(2,15,2,3,1,1,12,2,2,1,1)

total<-data[1]
for(i in 0:(total-1))
{
  
  #Colocamos los datos en las correspondientes variables
  #Numero N a analizar
  N<-data[5*i+2]
  #Monedas de 1 disponibles
  A<-data[5*i+3]
  #Monedas de 2 disponibles
  B<-data[5*i+4]
  #Monedas de 5 disponibles
  C<-data[5*i+5]
  #Monedas de 10 disponibles
  D<-data[5*i+6]
  #Creamos una lista que contenga todos las posibles combinaciones de cantidades de monedas con
  #la ayuda de expand.grid y la almacenamos en una matriz para operar con ella
  matriz_de_combinaciones<-expand.grid(0:A,0:B,0:C,0:D)
  #Multiplicamos la cantidad de monedas de cada tipo por su valor monetario
  matriz_de_combinaciones[,1]<-matriz_de_combinaciones[,1]*1
  matriz_de_combinaciones[,2]<-matriz_de_combinaciones[,2]*2
  matriz_de_combinaciones[,3]<-matriz_de_combinaciones[,3]*5
  matriz_de_combinaciones[,4]<-matriz_de_combinaciones[,4]*10
  
  #Ahora sumamos todos los valores de cada fila y filtramos aquellas filas cuyas sumas son
  #iguales a N, retornando la cantidad de dichas filas que cumplen la condicion
  sumas<-apply(matriz_de_combinaciones,MARGIN=1,sum)
  #Imprimimos la cantidad de filas cuyos elementos suman N, lo que equivale a la cantidad de
  #maneras de usar las monedas en posesion para formar N
  print(length(which(N==sumas)))
}

