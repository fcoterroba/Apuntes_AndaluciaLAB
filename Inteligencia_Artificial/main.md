# 15/12/2020
## Repaso con R

Vamos a hacer varios ejercicios sobre el dataset de [Bookings Hotel](./Bookings_Hotel.csv)

Se añade poniendo el separador como ; y añadiendo la propiedad ```stringsAsFactors=TRUE```

Vamos a observar los valores haciendole un summary: ```summary(nombre_variable)```

La columna ```channel``` y la columna ```channel2``` parecen ser complementarias.

Deberemos usar u otra, no las dos aunque vayamos a probar con ambas para ver cuál da mejores resultados.

### Vocabulario

- Se le dice *especifidad* al porcentaje de acierto que poseo sobre los valores negativos y falsos negativos.

- Se le dice *sensitividad* al porcentaje de acierto que poseo sobre los valores positivos y falsos positivos

# 16/12/2020
Si vemos el [primer script](./primerscript.R), en el `summary` del modelo Lineal no aparece el domingo ya que va incluido en el coeficiente de `Intercept`

Si queremos pintar más datos sobre una gráfica, `plot`, debemos usar el método `lines`. Por ejemplo:

```R
# Mostramos la gráfica con el consumo original
plot(aguaSinNA$CONSUMO, type="l", col="blue")

# Pintamos SOBRE la gráfica nuestro modelo lineal
lines(predict(modeloLineal, newdata=aguaSinNA), col="red")
```

## ¿Cómo hacer un forecast?
Vamos a hacer un ejemplo para hacer un forecast con visión a 7 días.

Primeramente, tenemos que montar un dataframe con **temperatura, lluvia, mes, año (anno) y día**.

Y asignarle los valores que ya sabemos: 20ºC, 0 (no llueve), mes 12, año 2020, día 16.

Si hubiese valores que no sabemos a ciencia cierta, debemos ingresar variables que supongamos.

**Por ejemplo,** si quisieramos hacer un forecast de vista a un mes, deberemos escribir la temperatura y la lluvia estimado y, en todo caso, modificarla a medida de que sepamos más información.

```R
# Creamos y predecimos la siguiente semana
siguienteSemana = data.frame(LLUVIA=c(0,0,0,0,10,0,0),
                             TEMPERATURA=c(10,12,8,-4,0,15,5),
                             ANNO=c(2020,2020,2020,2020,2020,2020,2020),
                             MES=c(12,12,12,12,12,12,12),
                             DIASEM=c("viernes", "viernes", "viernes", "viernes", "viernes", "viernes", "viernes"))
siguienteSemana
summary(siguienteSemana)

siguienteSemana$DIASEM = as.factor(siguienteSemana$DIASEM)
siguienteSemana$MES = as.factor(siguienteSemana$MES)
predict(modeloLineal, siguienteSemana)
```
