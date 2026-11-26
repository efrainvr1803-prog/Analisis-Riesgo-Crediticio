# Modelado de Riesgo de Crédito y Validación de Scorecard en Python

Proyecto aplicado de analítica de riesgo crediticio desarrollado en **Python** y **Jupyter Notebooks**, cubriendo desde el diseño de un *Scorecard* basado en **WOE / IV** y **Regresión Logística** hasta el escalamiento a puntos (**PDO**), monitoreo de estabilidad (**PSI**), análisis de cosechas (**Vintage** y **Roll Rates**), **Pérdida Esperada ($EL = PD \times LGD \times EAD$)** y validación temporal (**Out-of-Time** y calibración).

## Resumen de resultados del ejercicio
- **Scorecard multivariable (`edad`, `ingreso_mensual`, `uso_linea`):** `ROC-AUC = 0.7203` y `Gini = 0.4406`, con monotonicidad en las variables clave.
- **Escalamiento PDO y validación:** Implementación de escala con `score_base = 600`, `odds_base = 20` y `pdo = 50`, junto con métricas de discriminación (`Gini`, `KS`) y estabilidad (`PSI`).
- **Comportamiento de cartera:** Matrices de *Vintage* por `MOB` y transiciones mensuales (*Roll Rates*) entre cubetas de mora.
- **Pérdida Esperada ($EL$):** Integración de $PD$, $LGD$ y $EAD$ para cuantificar la exposición y pérdida esperada en pesos (`MXN`) por segmento.
- **Validación Train/Test y Out-of-Time:** Verificación sin fuga de datos (`Gini` en *Train* vs. *Test* y *In-Time* vs. *Out-of-Time*) y diagnóstico de descalibración de nivel (*level shift*) en ventanas futuras.

## Estructura del repositorio
- `notebooks/01_scorecard_pd_pdo_validacion.ipynb`: WOE/IV, regresión logística, escalamiento PDO, Gini, KS y PSI.
- `notebooks/02_vintage_roll_rates_el_oot.ipynb`: *Vintage*, *Roll Rates*, cálculo de $EL$ y validación *Train/Test* / *Out-of-Time*.
- `requirements.txt`: Dependencias del entorno de Python.

## Autor
**Efraín Velasco Rojas** — Licenciatura en Economía (Economía Aplicada), UAM Azcapotzalco.  
Enfoque en analítica de datos, modelado de riesgo crediticio y econometría aplicada (`Python`, `R`, `Stata`, `SQL`, `Power BI`, `Excel`).
