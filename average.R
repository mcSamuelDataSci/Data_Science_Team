#returns the average of an array of any length (e.g. anyaverage(c(1, 3, 5, 6, 7)) returns 4.4)
anyaverage <- function(x = c(0)){
  total = 0
  for (item in x){
    total = total + item
  }
  total = total / length(x)
}



