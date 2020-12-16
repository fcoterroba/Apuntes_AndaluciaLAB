bank = read.csv("bank-full.csv", sep=";", stringsAsFactors = TRUE)

model = gbm(y~., data=bank, n.trees=5000, cv.fold=5, distribution="multinomial")

agua = read.csv("CONSUMO SEVILLA CON MESES.csv", sep=";", dec=",")
agua$DIASEM = as.factor(agua$DIASEM)
aguaSinNA = agua[complete.cases(agua),]


library(gbm)
model2 = gbm(CONSUMO~LLUVIA+TEMPERATURA+ANNO+MES+DIASEM, data=aguaSinNA, n.trees=5000, cv.folds=5, distribution="gaussian")
gbm.perf(model2)

telco = read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv", sep = ",", dec=".", stringsAsFactors = TRUE)
telco
modelotelco = gbm(Churn~gender+SeniorCitizen+Partner, data=telco, n.trees=100, cv.folds=5, distribution = "gaussian")