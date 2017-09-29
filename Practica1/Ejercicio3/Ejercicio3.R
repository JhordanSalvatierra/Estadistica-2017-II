# Nombre : Jhordan Salvatierra Ramos 20112152A
# Ejercicio 3

#************************************************************************************
#a)
# Definimos una constante a con valor igual a 4
a<-4
a
# Definimos un vector x con numeros de 2 al 20
x<-2:20
x
# Aplicamos la función match a estos 2 elementos

# Lo que realiza la función match es darnos el PRIMER indice del vector x cuyo valor coincida 
# con a, por lo que el resultado de dicha operacion nos da 3.
match(a,x)

# Lo que hace la funcion min() es entregar el minimo valor de un vector
# La función which() nos entrega un vector de indices de x cuyos valores coinciden con a
# Por lo que la expresión min(which(x==a)) nos entrega el primer indice del vector x cuyo
# valor coincide con a.
min(which(x==a))

#La expresion a%in%x nos indica si el valor de a se encuentra en el vector x con un boolean
# TRUE o FALSE
a%in%x

#En este caso nos da la respuesta TRUE


#************************************************************************************

#b)system.time
#1)
y=c()
system.time(for(t in 1:100) y[t]=exp(t))


#2
system.time(y<-exp(1:100))

#3
system.time(y<-sapply(1:100,exp))

#Notamos que las 3 expresiones se ejecutan casi instantaneamente sin demora

#Pero si incrementamos el valor de los argumentos, notaremos una gran diferencia
system.time(y<-sapply(1:100000,exp))

#************************************************************************************
#c)

#La función nchar() nos indica el numero de letras en una palabra
#Ejm:
x<-"asdasdasds"
nchar(x) #Nos devuelve el valor de 10

#Definimos sea_shells
sea_shells<-c("She","sells","sea","shells","by","the","seashore","The","shells","she","sells",
              "are","surely","seashells","So","if","she","sells","shells","on","the","seashore",
              "I'm","sure","she","sells","seashore","shells")
#Aplicamos la función al vector sea_shells y nos devolvera la longitud de cada palabra
nchar(sea_shells)

#Mostramos las palabras por cantidad de letras sin repetición
for(i in 1:max(nchar(sea_shells))){
    cat(sprintf("Palabras con %d letra(s):\n",i))
  vec<-c()
  for(j in sea_shells) if(nchar(j)==i && !j%in%vec) vec<-c(vec,j)
  print(vec)
 }



