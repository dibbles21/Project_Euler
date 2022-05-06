# 16

val <- as.character(gmp::as.bigz(2^1000))

split <- stringr::str_split_fixed(val,
                                  "",
                                  n = nchar(val)) %>%
  as.numeric() %>%
  sum(.)
