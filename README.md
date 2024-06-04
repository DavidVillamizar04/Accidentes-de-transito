# <h1 align=center> **Accidentes de Transito Buenos Aires** </h1>

<p align=center><img src=Imagenes/Accidente.png><p>

# Contenido

+ [Introduccion](#introduccion)
+ [ETL](#etl)
+ [EDA](#eda)

# Introduccion

En el siguiente proyecto se desempeñara el rol de un Analista de Datos en el que tomaremos datos reales y realizaremos distintas metricas y KPI's que nos llevaran a diversas concluciones.

# <h1 align=center> **Proceso** </h1>

<p align=center><img src=Imagenes/Solucion.png><p>

# ETL
El primer paso para este proceso fue la limpieza de los datos suministrados en un formato `.xlsx`, para esto observamos que aunque no hay valores duplicados si hay valores faltantes.

<p align=center><img src=Imagenes/Informacion_DF.png><p>

Segun las necesidades del analisis decido eliminar por completo la columna de `Altitud` y en la columna de `Cruce` decido imputar los datos faltantes teniendo en cuenta la columna `Direccion Normalizada`, despues de esto procedo a tomar las columnas que voy a utilizar y guardo los dataframes en archivos CSV *(El proceso completo se encuentra en el notebook [ETL](Notebooks/ETL.ipynb))*.

# EDA

