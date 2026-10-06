
# 📊 Análisis Predictivo de Riesgo Crediticio

## 🎯 Objetivo del Proyecto
Desarrollo de un modelo econométrico Logit para predecir la probabilidad de impago (cartera vencida) en créditos, simulando el entorno de evaluación de riesgo de una institución bancaria. El objetivo es identificar las variables clave que detonan la morosidad para optimizar la aprobación de créditos.

## 🛠️ Herramientas Utilizadas
* **SQL (DBeaver):** Extracción, conexión a bases de datos relacionales y filtrado de perfiles de alto riesgo.
* **R (RStudio):** Análisis estadístico y entrenamiento del modelo de Regresión Logística.
* **Power BI:** Diseño de dashboard ejecutivo e interactivo para la visualización de la concentración del riesgo.

## 📈 Hallazgos Principales del Modelo
1. **El Ingreso es el factor determinante:** El modelo comprueba que a mayor ingreso del cliente, el riesgo de caer en cartera vencida disminuye drásticamente (P-value < 2e-16).
2. **El monto del préstamo (Foco rojo):** Existe una relación matemática directa entre el tamaño del crédito otorgado y la probabilidad de impago, concentrando las pérdidas operativas en las calificaciones C y D de la cartera.
3. **Vivienda como indicador de riesgo:** A través del cruce de datos en Power BI, se identificó que los clientes que rentan su vivienda representan el mayor riesgo operativo (morosidad del 21.8%), mientras que los propietarios (dueños) son el segmento más seguro (riesgo del 7.4%).
