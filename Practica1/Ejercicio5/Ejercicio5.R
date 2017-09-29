# Nombre : Jhordan Salvatierra Ramos 20112152A
# Ejercicio 5

#************************************************************************************

#Realizamos 1000 experimentos aleatorios con ayuda de sample, e identificamos cuando se obtiene
#el 1er sello con la ayuda de match() y contamos cuantas veces se obtiene sello 

contador<-numeric(1000)

for(i in 1:1000){
c<-match("sello",sample(c("cara","sello"),1000,replace=TRUE))
contador[c]<-contador[c]+1
}
contador

#Obtenemos la proporcion de veces en las que el juego es favorable y el numero total de juegos
sum(contador[4:1000])/1000
