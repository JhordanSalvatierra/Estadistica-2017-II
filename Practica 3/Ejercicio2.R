#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 2
#///////////////////////////////////////////////////////////////////////////////////////

#a.1)mtcars[-1:4]

#No es posible mezclar indices negativos con positivos
#Correccion
mtcars[1:4]

#a.2)mtcars[mtcars$cyl<=5]
#mtcars$cyl<=5 devuelve un vector de booleans, mas no los indices correspondientes a la condicion
#Correccion
#Usamos la funcion subset 
subset(mtcars,mtcars$cyl<=5)

#a.3)mtcars[mtcars$cyl==4 |6,]
subset(mtcars,mtcars$cyl==4 | mtcars$cyl==6)

