### Exercise 1 ###

for (ii in 1:9){
  if(ii<9){
    cat("\n")
  }
  else{
   cat("*") 
  }
}

### Exercise 2 ###

for (ii in 1:19){
  if(ii%%2){
    cat("*")
  }
  else{
    cat("&") 
  }
}

### Exercise 3 ###
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}
##dogs start at 10, then 11, 12, 13, 14, and the last iteration is 15.
###

meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
}
##meatloaf starts at 0, then is -4, then -5, -6, -7, -8.
###
bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;
}
##bubbles start at 12, then is -1, -2, -3, and -4.


### Exercise 4 ###
###you can use the if statement with the modulus operator to conditionally perform operations
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t')
  }
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Hooray, presidential election!', sep = '\t')
  }
  
}

### Exercise 5 ###

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded <- rep(1,6)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; 
  }

compounded

### Exercise 6 ###

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- bankAccounts[i]-house[i]-fun[i]-food[i]+income[i]
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    compounded[i] <-  interestRate*bankAccounts[i] + bankAccounts[i]
    #step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
  }}
compounded

### Exercise 7 ###
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
income <- c(21, 21, 21);

for (j in 1:5){
  if (j %% 2 != 0){
    for (i in c(1,3)){
      bankAccounts[i] <- bankAccounts[i]-house[i]-fun[i]-food[i]+income[i]+5000
      compounded[i] <-  interestRate*bankAccounts[i] + bankAccounts[i]
    } 
    for (i in 2){
        bankAccounts[i] <- bankAccounts[i]-house[i]-fun[i]-food[i]+income[i]
        compounded[i] <-  interestRate*bankAccounts[i] + bankAccounts[i]
    }}
   else { 
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- bankAccounts[i]-house[i]-fun[i]-food[i]+income[i]
    compounded[i] <-  interestRate*bankAccounts[i] + bankAccounts[i]
  }}}

