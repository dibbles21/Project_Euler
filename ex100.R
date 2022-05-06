numer <- as.integer(round(0.5^0.5 * (10^12 + 34))

denom <- 10^12 + 35

x <- (numer / denom) * ((numer - 1) / (denom - 1))


numer <- round(0.5 ^ 0.5 * (10^12 + 1))

denom <- 10^12 + 1

while ((numer / denom) * ((numer - 1) / (denom - 1)) > 0.50000000000001 |
       (numer / denom) * ((numer - 1) / (denom - 1)) < 0.49999999999999) {
  
  if ((numer / denom) * ((numer - 1) / (denom - 1)) < 0.5) {
    
    denom <- denom + 1
    
  } else {
    
    if ((numer / denom) * ((numer - 1) / (denom - 1)) > 0.5) {
      
      numer <- numer + 1
      
    }}
  