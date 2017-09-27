#######################################
#### BOOTCAMP MODELING EXCERCISES #####
#######################################

### A

#write function
ricker <- function(NO,KK,rr,ttMax, PLOTFLAG){   ##variables: initial pop, K, r, PLOTFLAG, maxtime
  NN <- matrix(NA, nrow = 1, ncol = ttMax+1)
  NN[1] <- NO   ##open vector to store output
  for (tt in 1:ttMax){   ##for loop using equation
  NN[tt+1] <- NN[tt]*exp(rr*(1-NN[tt]/KK))
  }
  if(PLOTFLAG == 1){
    plot(0:ttMax,NN, type = 'l', xlab='t', ylab = 'N') ##plotvalues
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

