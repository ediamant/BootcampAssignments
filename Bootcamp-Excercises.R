### 9.1.0.0.1 excercise ###

## x%%y signifies the remainder when x is divided by y
## x%/%y signifies the integer division when x is divided by y

### 9.1.1.0.1 excercise ###
x <- c(1,2,3,4)
y <- c(1,2,3,4,5,6)
x+y
## The vectors add in a way that the longer end of the vector corresponds to the beginning of the shorter vector

### 9.1.2.0.1 excercise ###
x <- seq(1,13,4)
x <- seq(1,5,0.2)

### 9.1.2.0.2 Exercise ###
3:1
seq(12,1)
##The sequence goes in descending order

### 9.1.3.0.1 Excercise ###
z <- c(1,3,5,7,9,11)
v <- z[seq(1,5,2)]; v
## This translates to the 1st, 3rd, and 5th elements of z: 1, 5, and 9.

### 9.1.3.0.2 Exercise ###
v <- z[c(2,1,3)]; v

### 9.1.3.0.3 Exercise ###
z[9] <- 11; z
## a 9th element is added with the specified value, but the interceding elements are also added as empty (NA)

### 9.1.3.0.4 ###
x <- 1:10
y <- (x-1)/(x+1)
plot(x,y, type = "l")

### 9.1.3.0.5 ###
## x rounded to 2.0

### 9.1.3.0.6 ###
sum(1+0.5^(1:10))
sum(1+0.5^(1:10))-1/(1-0.5)
sum(1+0.5^(1:50))-1/(1-0.5)
##as n increases, 1+r^n approaches the limit 1/(1-r) for r = 0.5

### 9.1.5.0.1 ###
##the dataframe "light" would be replaced with a subset and therefore we would not be able to extract which rmaxes were below 50 subsequently

### 9.1.5.0.2 ###
x<- runif(20)
lowx <- x[x<mean(x)]

### 9.1.5.0.3 ###
which(x < mean(x))

### 9.1.5.0.4 ###
x[1+2*(0:n)]
x[seq(,10,2)]

### 9.2.1.0.1 ###
X <- matrix(c(1,2,1,2,1,2,1,2),nrow=2,ncol=4)

### 9.2.1.0.2 ###
matrix(rnorm(35,1,2),nrow=5,ncol=7)

### 9.2.2.0.1 ###
C <- cbind(1:3,4:6,5:7); C
D <- rbind(1:3,4:6); D

rbind(C,D)
cbind(C,C)
cbind(C,D)
##cbind(C,D) does not work because the number of rows in C does not match that of D

### 9.3.0.0.1 ###
x <- seq(1,27)
dim(x) <- c(3,9)
is.array(x)
is.matrix(x)
x
##the vector transforms into an array
