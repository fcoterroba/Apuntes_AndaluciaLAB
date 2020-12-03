pais <- c("España", "Alemania", "Italia", "Portugal")

ciudades <- c("Madrid", "Salamanca", "Bilbao", "Barcelona",
              "Sevilla", "Madrid", "Granada", "Santander", "Valencia",
              "Galicia", "Valencia" , "Sevilla", "Bilbao", "Sevilla", "Salamanca",
              "Granada", "Madrid", "Madrid", "Madrid", "Valencia",
              "Santander", "Salamanca", "Madrid", "Barcelona", "Bilbao",
              "Granada", "Valencia", "Santander", "Valencia", "Galicia");
factorCiudad <- factor(ciudades)

factorCiudad

ejercicio <- factor(ciudades, levels=c("Madrid", "Sevilla"))

levels(ejercicio)

ingresosPersonas <- sample(10000:45000, 30, replace=T)

length(ejercicio); length(ingresosPersonas)

MediaIngresosMerge = tapply(ingresosPersonas, ejercicio, mean); MediaIngresosMerge
