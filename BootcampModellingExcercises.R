#######################################
#### BOOTCAMP MODELING EXCERCISES #####
#######################################
setwd("/Users/Elliediamant/Documents/QBC2017")
### A

#write function
ricker <- function(NO,KK,rr,ttMax, PLOTFLAG){   ##variables: initial pop, K, r, PLOTFLAG, maxtime
  NN <- matrix(NA, nrow = 1, ncol = ttMax+1)
  NN[1] <- NO   ##open vector to store output
  for (tt in 1:ttMax){   ##for loop using equation
  NN[tt+1] <- NN[tt]*exp(rr*(1-NN[tt]/KK))
  }
  if(PLOTFLAG == 1){
    plot(0:ttMax,NN, type = 'l', xlab='t', ylab = 'N', main = rr) ##plotvalues
  }
  else {
    return(NN)
  }
}


### B

ricker(NO = 100, KK = 1000, rr = 1.0, ttMax = 100, PLOTFLAG = 1)
#increases with no oscillation

ricker(NO = 100, KK = 1000, rr = 4.0, ttMax = 100, PLOTFLAG = 1)
ricker(NO = 100, KK = 1000, rr = 3.0, ttMax = 100, PLOTFLAG = 1)
#persistant regular oscillations

ricker(NO = 100, KK = 1000, rr = 8.0, ttMax = 100, PLOTFLAG = 1)
#population died out :(

ricker(NO = 100, KK = 1000, rr = 1.7, ttMax = 100, PLOTFLAG = 1)
#decaying oscillations

##the r parameter is the key driver of these patterns

### C
rrseq <- c(1.0, 1.5, 2.0, 3.0, 4.0, 7.0)

# define parameter values
par(mfcol = c(3,2))
NO <- 100
KK <- 1000

#Use a for loop to repeatedly run the model and plot output
for (ii in 1:6) {
  ricker(NO,KK,rr=rrseq[ii],ttMax = 100, PLOTFLAG =1)
  }
  
### D
library(deSolve)
NO <- 20
KK <- 1000
timeaboveKK.2 <- function(NO, KK, rr, ttMax, PLOTFLAG){
  nVec <- ricker(NO = NO, KK = KK, rr = rr, ttMax = ttMax, PLOTFLAG = PLOTFLAG)
nVec <- as.vector(nVec)
GreatKK.2 <- which(nVec >= KK/2)
timeKK.2 <- GreatKK.2[1]
timeKK.2
}

### E

timetoKK.2 <- matrix(NA, nrow = 1, ncol = 9)
timetoKK.2[1] <- 1 
rr = seq(0.1,0.9, by = 0.1)
KK = 1000
for (rr in seq(0.1, 0.9, by = 0.1)){
  timetoKK.2[rr*10]  <- timeaboveKK.2(NO = 20,KK = KK,rr = rr, ttMax = 1000, PLOTFLAG = 0)
}
plot(timetoKK.2, seq(0.1,0.9, by = 0.1), xlab = "t(k/2)", ylab = "r")

timeaboveKK.2(NO = 20,KK = 1000,rr = 0.1, ttMax = 1000, PLOTFLAG = 0)

### F

# set parameter values
#population size, NO, and then vectors for KK and rr
#initialize vector with null values


