vector <- c(18,10,30)
maximo <- 0
if( (vector[1] > vector[2]) & (vector[1] > vector[3]) ){
  maximo <- vector[1]
}else if (vector[2] > vector[3]){
  maximo <- vector[2]
}else{
  maximo <- vector[3]
}
print(maximo)
