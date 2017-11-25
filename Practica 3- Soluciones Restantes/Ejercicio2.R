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

#///////////////////////////////////////////////////////////////////////////////////////
#b)
x<-1:5
x[NA]
# La razon por la que x[NA] produce valores NA es porque cualquier indexado con NA siempre 
# retorna el valor de NA, y la razon por la que aparecen 5 valores NA es debido a la propiedad
# de reciclaje de R

#Ejemplo usando TRUE en lugar de NA
x[TRUE]

#Nos devuelve el vector x completo ya que TRUE se recicla 5 veces por la propiedad de 
#reciclaje

#///////////////////////////////////////////////////////////////////////////////////////
#c)
# mtcars[1:20] retorna un error debido a que por defecto analizara las columnas cuyos indices
# son 1 a 20, pero como el data.frame posee menos de 20 columnas, nos dara un error.

#Al agregar una coma a la derecha mtcars[1:20,] estaremos especificando que nos referimos a las
#filas del 1 al 20

#///////////////////////////////////////////////////////////////////////////////////////
#d)
# is.na(df) devuelve una matriz de booleans la cual indica si los elementos de df son o no son NA
# por lo que la expresion df[is.na(df)]<-0 no modificara el contenido de df, ya que df no 
# contiene elementos NA
df[is.na(df)]<-0
df


