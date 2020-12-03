variable <- 565

if(is.numeric(variable)){
  print("Es un número")
}else if(is.character(variable)){
  print("Es un carácter")
}else{
  print("No es ni un número ni un carácter")
}
