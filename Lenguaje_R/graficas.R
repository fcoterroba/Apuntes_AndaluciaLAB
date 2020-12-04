
data(airquality)
View(airquality)

#Carga del fichero en un dataset
airqualitydataset = read.csv('./Datasets/airquality.csv', header=TRUE, sep=",")

# Funciones para explorar los datos cargados
str(airqualitydataset)
head(airqualitydataset, n=3)
summary (airqualitydataset)

plot(airqualitydataset$Ozone, type="h")

barplot(airqualitydataset$Ozone,
     xlab = "Concrentación de Ozono en el aire",
     ylab = "Niveles de Ozono",
     col = "green",
     horiz = FALSE)

hist(airqualitydataset$Solar.R)

hist(airqualitydataset$Solar.R,
     main = "Solar radiation values in air",
     xlab = "Solar rad.",
     col = "yellow")
