##### PLOTTING AND GENETIC VARIATION DATA ANALYSIS EXCERCISE, ASSIGNMENT 2 #####
### 1.A.
#adjust function to spit out p values
compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  #here we use the built-in function for the chi-sq distribution:
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) #note, here we don't multiply by n
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$p.value
  return(chisq)
}

#apply function to all snps
chisqs=apply(snps,1,compute_chisquare_2)
head(chisqs)
pvals<- chisqs
### 1.B.
#determine p thresholds
signifthres <- 0.05
#test proportion below that threshold
sum(pvals<signifthres)/length(pvals)
## proportion <0.05 = 0.01270553
signifthres <- 0.01
sum(pvals<signifthres)/length(pvals)
## proportion <0.01 = 0.002242152
signifthres <- 0.001
sum(pvals<signifthres)/length(pvals)
## proportion < 0.001 = 0.0004982561

### 1.C.
num_pval <- length(pvals)

### 1.D.
exp_pvals <- c()

for(ii in 1:num_pval) {
  exp_pvals[ii] = ii/num_pval 
  
}
exp_pvals

### 1.E. 
sort_pvals <- sort(pvals,decreasing = FALSE)

### 1.F.
log_sort_pvals <- -log10(sort_pvals)
log_exp_pvals <- -log10(exp_pvals)

### 1.G.
plot(log_exp_pvals,log_sort_pvals)

### 1.H.
abline(lm(log_sort_pvals~log_exp_pvals), lty = 2, col = 'red')

### 2.A. 
zz <- read.table("pheno.sim.2014.txt",header=TRUE)

### 2.B.
quantile(zz[,2], .25)
#25% are below 4.768756
### 2.C.
quantile(zz[,2], 0.75)
#25% are above 7.354975

### 2.D.
d <- density(zz[,2])
plot(d, xlab = "blood glucose measurement", ylab = "frequency", main = "density plot")
abline(v = 4.768756, lty = 2, col = 'red')
abline(v = 7.354975, lty = 2, col = 'red')

