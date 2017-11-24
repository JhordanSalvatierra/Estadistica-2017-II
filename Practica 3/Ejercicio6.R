#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 6
#///////////////////////////////////////////////////////////////////////////////////////
iris
#a)
#El objeto iris es un data.frame que esta compuesto de 5 columnas y 150 filas, las primeras 4
#columnas son numericas y la 5ta columna es un factor con 3 niveles(etiquetas)
str(iris)

#b)
summary(iris)
#La informacion que nos proporciona la funcion summary() es:
#*El minimo y maximo valor de las columnas numericas
#*La media, la mediana, el primer quantil y el tercer quantil de las columnas numericas
#*Las etiquetas y el numero de filas con cada etiqueta para columnas factores

#c)
#Analizamos el minimo,maximo,media,mediana y quantiles para la columna Sepal.Length
min(iris[,1])
max(iris[,1])
#La funcion quantile nos muestra el primer quantil en (25%) y el tercer cuantil en (75)%, 
#tambien nos muestra la media en (50)%
quantile(iris[,1])
#mean nos da la media
mean(iris[,1])
#median nos da la mediana
median(iris[,1])


