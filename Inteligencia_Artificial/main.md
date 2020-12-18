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

# 17/12/2020
## Jupyter
Hoy vamos a estar trabajando con jupyter notebook y la librería pandas.

Se instala con `pip install pandas` y se importa con `import pandas`

### Importar un csv
```bank = pd.read_csv("/path/to/file.csv", sep=";")```

### Summary de R
```bank.describe()```

### Mostrar 'condiciones' en Pandas
```bank[(bank['age'] > 40)]```

### Random forest en Python usando Pandas
```py
train_x, test_x, train_y, test_y = train_test_split(bank[feature_cols], bank.y, test_size = 0.25, random_state = 123)

train_x_dummies = pd.get_dummies(data=train_x, columns = ['job', 'marital', 'education', 'default', 'housing', 'loan', 'contact', 'month', 'poutcome'])

test_x_dummies = pd.get_dummies(data=test_x, columns = ['job', 'marital', 'education', 'default', 'housing', 'loan', 'contact', 'month', 'poutcome'])

dtc2 = tree.DecisionTreeClassifier(max_depth=2)

modelBank2 = dtc2.fit(train_x_dummies, train_y)

dtc2.score(train_x_dummies, train_y)

dtc2.score(test_x_dummies, test_y)
```

Finalmente mostramos el árbol usando ```tree.plot_tree(modelBank2)```

Podemos predecir en base a este ejercicio usando 
```py
predict2 = dtc2.predict(test_x_dummies)
predict2
```

# 18/12/2020
