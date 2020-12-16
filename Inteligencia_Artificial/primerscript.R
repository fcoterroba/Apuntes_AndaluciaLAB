# Importamos el dataset indicando el separador y el decimal
agua = read.csv("CONSUMO SEVILLA CON MESES.csv", sep=";", dec=",")
head(agua)
summary(agua)

# Hacemos un factor del día de la semana
agua$DIASEM = as.factor(agua$DIASEM)

summary(agua)

aguaSinNA = agua[complete.cases(agua),]
summary(aguaSinNA)

# Cómo crear un modelo lineal
modeloLineal = lm(CONSUMO~LLUVIA+TEMPERATURA+ANNO+MES+DIASEM, data=aguaSinNA)
# Mostramos el modelo lineal
summary(modeloLineal)
# Mostramos la gráfica con el consumo original
plot(aguaSinNA$CONSUMO, type="l", col="blue")
# Pintamos SOBRE la gráfica nuestro modelo lineal
lines(predict(modeloLineal, newdata=aguaSinNA), col="red")

# Para hacerlo más exacto
aguaSinNA$MES = as.factor(aguaSinNA$MES)
summary(aguaSinNA)
# Cómo crear un modelo lineal
modeloLineal = lm(CONSUMO~LLUVIA+TEMPERATURA+ANNO+MES+DIASEM, data=aguaSinNA)
# Mostramos la gráfica con el consumo original
plot(aguaSinNA$CONSUMO, type="l", col="blue")
# Pintamos SOBRE la gráfica nuestro modelo lineal
lines(predict(modeloLineal, newdata=aguaSinNA), col="red")

