#install.packages(c("DBI", "RSQLite"))
# 1. Cargar las librerías
library(DBI)
library(RSQLite)

# 2. Conectar R directamente a tu base de datos SQL
con <- dbConnect(RSQLite::SQLite(), "F:/EFRAIN/CARPETAS/CURSOS/CURSO EXTRA BANCOPPEL/archive/base_banco.db")

# 3. Jalar la tabla completa a R para entrenar el modelo
datos_banco <- dbGetQuery(con, "SELECT * FROM credit_risk_dataset")

# 4. Armar el Modelo Logit (Regresión Logística)
# Calculamos el riesgo de impago (loan_status) basado en edad, ingresos y monto
modelo_riesgo <- glm(loan_status ~ person_age + person_income + loan_amnt, 
                     data = datos_banco, 
                     family = binomial)

# 5. Mostrar los resultados econométricos
summary(modelo_riesgo)

# 6. Desconectar la base por seguridad
dbDisconnect(con)