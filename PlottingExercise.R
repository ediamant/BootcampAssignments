### 1 ###
call_heights <- function(x,arg1)
  rnorm(x,mean = 69, sd = 10)
heights <- call_heights(1000)

### 2 ###
mean(heights)

### 3 ###
mean_heights_100 <- c()
for (i in 1:1000) {
  mean_heights_100[i] <- mean(call_heights(100))
  }


### 4 ###
mean_heights_1000 <- c()
for (i in 1:1000) {
  mean_heights_1000[i] <- mean(call_heights(1000))
}

### 5 ###
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) 
bins <- seq(65,75,0.5)
hist(mean_heights_100,breaks=bins)$breaks
hist(mean_heights_1000,breaks = bins)$breaks
counts_100<-hist(mean_heights_100,breaks=bins)$counts
counts_1000 <- hist(mean_heights_1000,breaks=bins)$counts
barplot(rbind(counts_100,counts_1000), col = c(2,4), beside = T, xlab= "Average height(inches)", ylab = "Counts", names.arg = seq(65,74.5,0.5))
