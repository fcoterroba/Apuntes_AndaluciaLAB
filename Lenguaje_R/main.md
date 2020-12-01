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