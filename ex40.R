# 40

x <- 1:(2 * 10 ^ 5)

x <- paste0(as.character(x),collapse = "")

a <- as.numeric(substr(x, 1, 1)) *
  as.numeric(substr(x, 10^1, 10^1)) * 
  as.numeric(substr(x, 10^2, 10^2)) * 
  as.numeric(substr(x, 10^3, 10^3)) * 
  as.numeric(substr(x, 10^4, 10^4)) * 
  as.numeric(substr(x, 10^5, 10^5)) * 
  as.numeric(substr(x, 10^6, 10^6))
