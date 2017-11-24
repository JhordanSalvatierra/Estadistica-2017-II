#Salvatierra Ramos Jhordan 20112152A
#Ejercicio 4
#///////////////////////////////////////////////////////////////////////////////////////
#(a)
f1<-function(x={y<-1;2},y=0){
  x+y
}

f1()

#La funcion verifica los valores usados en esta sobre la marcha, por lo que a la hora de buscar
#el valor para x, y de este no estar definido, la funcion recurrira al valor por defecto asignado
#en la implementacion de la funcion.

#En este caso como x no esta definido, la funcion se dirige a revisar los valores por defecto
#y ejecuta la EXPRESION {y<-1;2} (izquierda a derecha)en orden hasta encontar un valor para x,
#por lo cual tambien define el valor de y=1 en el camino, esta es la razon por la cual el valor
#de y no se vuelve 0 por default ya que ya obtuvo un valor valido para "y" ya no se molesta en
#revisar el valor por defecto definido en la implementacion.

#Ejemplo, usamos la funcion con y=20, pero nos damos cuenta de que la funcion no toma "y" como 20
#y en su lugar toma y=1
f1(,20)

#Cuando se define la funcion se coloca
x={y<-1;2}
#///////////////////////////////////////////////////////////////////////////////////////
#(b)

trims <- c(0, 0.1, 0.2, 0.5)
#distribucion aleatoria de Cauchy
x <- rcauchy(100)

#La funcion mean se aplicara para cada elementos de trims como argumento "trim" de la funcion mean()
#x tomara el 1er argumento de mean()

lapply(trims, function(trim) mean(x, trim = trim))

#Se usa la funcion mean de manera directa y se especifica que x tomara el primer argumento como
#se muestra en el 3er argumento de lapply, por lo que los elementos de trims tomaran el 2do 
#argumento de mean haciendo que los 2 codigos devuelvan el mismo resultado, ya que se aplican 
#los mismos argumentos.

lapply(trims, mean, x = x)


