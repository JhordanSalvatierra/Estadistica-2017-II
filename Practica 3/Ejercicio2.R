#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 2
#///////////////////////////////////////////////////////////////////////////////////////

#a.1)mtcars[-1:4]

#No es posible mezclar indices negativos con positivos
#Correccion
#mtcars[1:4] nos muestra las primeras 4 columnas del dataframe
mtcars[1:4]

#mtcars[-1:-4] nos muestra todas las columnas excepto las primera 4
mtcars[-1:-4]

#a.2)mtcars[mtcars$cyl<=5]

#mtcars$cyl<=5 analiza por defecto las columnas que cumplen dicha condicion (de no colocarse
#una "," para identificar si se quiere filtrar por columnas o por filas), pero en este caso
#necesitamos analizar las filas, por lo que es necesario colocar una "," a la derecha para 
#especificar que estamos hablando de las filas.

#Correccion
mtcars[mtcars$cyl<=5,]

#Tambien podemos usar la funcion subset para filtrar informacion del data.frame 
subset(mtcars,mtcars$cyl<=5)

#a.3)mtcars[mtcars$cyl==4 |6,]

#Correccion
mtcars[mtcars$cyl==4 | mtcars$cyl==6,]

#Usando subset()
subset(mtcars,mtcars$cyl==4 | mtcars$cyl==6)


