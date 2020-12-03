pais <- c("España", "Alemania", "Italia", "Portugal")

salariomedio <- c(30000,60000,25000,23000)

salariomedio[salariomedio < 30000]

names(salariomedio) <- pais

salariomedio[salariomedio<30000]

salariomedio[c("España","Portugal")]

ciudades <- c("Madrid", "Salamanca", "Bilbao", "Barcelona",
              "Sevilla", "Madrid", "Granada", "Santander", "Valencia",
              "Galicia", "Valencia" , "Sevilla", "Bilbao", "Sevilla", "Salamanca",
              "Granada", "Madrid", "Madrid", "Madrid", "Valencia",
              "Santander", "Salamanca", "Madrid", "Barcelona", "Bilbao",
              "Granada", "Valencia", "Santander", "Valencia", "Galicia");

factorCiudad <- factor(ciudades)

factorCiudad

levels(factorCiudad)

ingresosPersonas <- sample(10000:45000, 30, replace=T)

length(factorCiudad); length(ingresosPersonas)

MediaIngresosMerge = tapply(ingresosPersonas, factorCiudad, mean); MediaIngresosMerge