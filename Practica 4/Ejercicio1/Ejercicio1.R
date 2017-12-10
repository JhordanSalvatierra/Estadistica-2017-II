test1 <- c(1:5, "6,7", "8,9,10")
test1
tf <- tempfile()
writeLines(test1, tf)
getwd()
read.csv(tf, fill = TRUE)


l1 <- list(1:5,c=c("a","b","c"))
l2 <- list(6:10)
l1[[1]] + l2[[1]]
l1[[2]]
typeof(l1$c)

typeof(l1[[1]])
typeof(l1[1:2])


x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
x
length(x[[1]])


tiempo <-c(1,2,3,4,5,6,7)
demanda <-c(8.3, 10.4, 19.0, 17.0, 15.8, 15.3, 19.8)
BID =data.frame(tiempo, demanda)
dl <-lapply(BID, sort)
dl
as.data.frame(dl)


z <- function(z) return (c(z, z^2))
sapply(1:8, z)



f1 <- factor(letters)
f1
levels(f1)

df <- data.frame(x = 1:3)
df$y <- list(1:2, 1:3, 1:4)
df

dfm <- data.frame(x = 1:3, y = I(matrix(1:9, nrow = 3)))
str(dfm)
dfm[2, "y"]
dfm

v<-head(iris)
apply(v,2,max)


x<-1:20
x

which(x>5,arr.ind = TRUE)
which(x,2)
x<-c(TRUE,FALSE,TRUE,FALSE)
which(x>5)
x<-c(1:5,NA,6:10,NA)
NA %in%x
match(x,NA)
y<-as.list(x)
as.numeric(y)
which()
match(NA,as.numeric(y))
