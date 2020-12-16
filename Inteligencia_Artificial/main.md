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