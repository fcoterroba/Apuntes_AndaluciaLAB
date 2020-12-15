# 15/12/2020
## Repaso con R
**TODO:**
    
- Añadir enlace del dataset
- Comprobar enlace de la línea 18

Vamos a hacer varios ejercicios sobre el dataset de **Bookings Hotel**

Se añade poniendo el separador como ; y añadiendo la propiedad ```stringsAsFactors=TRUE```

Vamos a observar los valores haciendole un summary: ```summary(nombre_variable)```

La columna ```channel``` y la columna ```channel2``` parecen ser complementarias.

Deberemos usar u otra, no las dos aunque vayamos a probar con ambas para ver cuál da mejores resultados.

- ```status``` será la columna que queremos predecir aunque resumiendo en *anulada* o *no anulada*