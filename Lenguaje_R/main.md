# 30/11/2020 
R es un lenguaje de programación y está disponible en formato consola o su "IDE", R Studio.

En R studio podemos escribir directamente en la consola o en el notebook.

Dichos comandos del notebook solo se ejecutarán cuando le demos a `CTRL + INTRO`

El objeto básico de R es un dataframe.

El dataframe es como una base de datos en formato Excel, con tablas y columnas.

**Iris** es un dataframe de ejemplo con 150 especies de una planta homónima y que contiene la longitud del sépalo, del pétalo, la especie a la que pertenece, etcétera.

Le podemos asignar una variable a un dataframe y si hacemos click, podemos ver el dataframe de manera algo más visual.

Para ver una variable que contiene un dataframe, se muestra `View(valor de la variable)`

`summary(variable)` da el valor resumido de una variable. Muestra la media, el mínimo, máximo, etcétera.

**Se empieza a contar SIEMPRE desde 1**
## Ver una fila o columna
`nombredeldataframe[x,y]` *//(sustituyendo la X por el número de la fila o la Y por el número de la columna)*
## Añadir nueva columna
`nombredeldataframe$nombrenuevacolumna = valor`
## Borrar columna
`nombredeldataframe$nombrecolumna = NULL`
## Condiciones
Existen dos formas:

`nombredeldataframe[nombredeldataframe$nombrecolumna > CONDICIÓN,NÚMERO COLUMNA A MOSTRAR]` 

`nombredeldataframe[nombredeldataframe$nombrecolumna > CONDICIÓN,]$nombredecolumna` 
## Borrar una variable
`rm(variable)`
## Parsear variables
Existen los métodos `as.numeric()`y `as.character()`
## Mostrar número de filas y columnas
`nrow(dataframe)` y `ncol(dataframe)`
## Leer un fichero
`read.csv("ruta local o de internet", sep:";")` *//Si el separador por defecto es una coma, `sep` no será necesario*
## Cambiar nombre de columnas
Con `colnames(dataframe)[número de columna] = "Nuevo nombre"` podemos cambiar el nombre de la columna
## Mostrar datos
Hay dos formas:
`plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species)`
`plot(iris$Petal.Length, iris$Petal.Width, col=c("Pink", "Blue", "Yellow")[iris$Species])`
Con el siguiente comando podemos ver **todas las posibles combinaciones**:
`plot(iris, col=iris$Species)`

### Distintos tipos de gráficos
Si añadimos el parámetro `type` a un comando plot, podremos variar la forma de mostrar los gráficos.
    - `type="l"` *//Líneas*
    - `type="b"` *//Líneas con puntos*
    - `type="c"` *//Líneas partidas por puntos*
    - `type="o"` *//Puntos impresos en líneas*
    - `type="h"` *//Líneas verticales*
    - `type="s"` *//Escaleras*
Dentro de las líneas, existen variaciones:

![texto alternativo](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/Lineas_R.png)

Se pueden usar así: `plot(elect$SER_TUR, type="l", lty=2, col="red")` *//Así añadimos, además, un color a la línea*
## Mostrar datos sin sobreescribir el gráfico
Con el comando `lines` podemos mostrar un gráfico encima del ya existente.

`lines(elect$SER_TUR.2, type="l", lty=2)`
## Forecast de series temporales
**¿Qué es una serie temporal?** Una serie temporal es una secuencia de datos medidos ordenados cronológicamente.

Con el comando `decompose()`, lo primero que se busca es una estacionalidad de la serie y a partir de ese dato, se calcula el resto.

Para hacer la estacionalidad a días, se usa `stl()` con el parámetro, `s.window=7`
# 01/12/2020
## Git - Control de versiones
Git es un sistema de control de versiones. Sus partes son:

    - Repositorio → Lugar en el que se almacenan los datos actualizados e histórico de cambios
    - Revisión → Versión determinada de la información que se gestiona.
    - Tag → Los tags permiten identificar revisiones importantes en el proyecto
    - Branch → Conjunto de archivos que ha sido ramificado o bifurcado. En ese momento, existen dos copias de dichos archivos que serán desarrolladas y modificadas de fomra independiente.

## Python
Vamos a empezar a realizar pruebas en Python.

Vamos a crear un archivo de pruebas con extensión py.

Para crear un archivo en la terminal de Linux se puede usar: `nano testing.py`

# 03/12/2020
Un factor que representa a un vector que define una clasificación discreta de los elementos de otro vector

En R existen
    - Los factores nominales se basan en una ordenación natural de los niveles y se crean con `factor()`
    - Los factores ordinales tienen un orden concreto partiendo de la función `ordered()`

**Vamos a hacer una serie de ejercicios del [PDF](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/Introduccion_A_R.png) desde la página 24 hasta la 28**

Se puede ver el script de ejemplo en R [pinchando aquí](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/ejercicio1.R)

Posteriormente, similar al ejercicio anterior realizamos una variante, indicando únicamente **Madrid** y **Sevilla**. [Script en R](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/ejercicio1_1.R)

## Variables indexadas (matrices)
Una variable indexada (array o matriz) es una colección de datos indexados por varios índices. **EJEMPLO**

```R
mismonombre = c(1:40); dim(mismonombre) <- c(10,2,2); mismonombre
```

Otro ejemplo:
```R
h = (1:50)
z <- array(h, dim=c(3,4,2)) # 3 FILAS, 4 COLUMNAS Y 2 CONJUNTOS
```
☝ puede tener menos valores de los escritos pero NUNCA puede tener de más.

## Batería de ejercicios
### Ejercicio 1 |  Crear una función para verificar si un numero es par o impar
```R
x <- 458923
if(x%%2 == 0){
  print("Es par")
}else{
  print("Es impar")
}
```

### Ejercicio 2 | Verifica si el valor de una variable es un numero o un carácter
```R
variable <- 565
if(is.numeric(variable)){
  print("Es un número")
}else if(is.character(variable)){
  print("Es un carácter")
}else{
  print("No es ni un número ni un carácter")
}
```

### Ejercicio 3 | Dado un vector con 3 valores numericos, calcular cual es el valor máximo, utilizando if, else
```R
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
```

<!-- TODO: Añadir ejercicios 4 y 5 (están en el repo del profe) -->
<!--# Ejercicio 4 # Crear una función que calcule la media de dos números pasados como parámetros # Ejercicio 5 # Crear una función que sume todos los el1ementos de una matriz -->

## Funciones gráficas
Las instrucciones gráficas se dividen en 3 categorías:

  - Alto nivel → Funciones que crean un nuevo gráfico con ejes, etiquetas y títulos
  - Bajo nivel → Añade información a un gráfico existente como puntos adicionales, líneas, etiquetas, etc.
  - Interactivas → Funciones que permiten interactuar con un gráficom, añadiendo o eliminadno información usando el ratón o el teclado

# 04/12/2020
## Prácticas con datasets
Hoy vamos a hacer una práctica con el dataset de la [calidad del aire](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/Datasets/airquality.csv)

`data(carga un dataset ya definido en R` //airquality, por ejemplo

`airqualitydataset = read.csv('./Datasets/airquality.csv', header=TRUE, sep=",")` 

Los nombres técncicos para filas y columnas son **observaciones** y **variables**, respectivamente.

```R
plot(airqualitydataset$Ozone)
plot(airqualitydataset$ozone, airquality$wind)
plot(airqualitydataset)
```

```R
barplot(airqualitydataset$Ozone,
     xlab = "Concrentación de Ozono en el aire",
     ylab = "Niveles de Ozono",
     col = "green",
     horiz = FALSE)
```

El anterior script genera lo siguiente:

![calidad del aire](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/Barplot_1.png)

```R
hist(airqualitydataset$Solar.R,
     main = "Solar radiation values in air",
     xlab = "Solar rad.",
     col = "yellow")
```

El anterior script genera lo siguiente:

![calidad del aire](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Lenguaje_R/Histogram_1.png)