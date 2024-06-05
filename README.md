# <h1 align=center> **Accidentes de Transito Buenos Aires** </h1>

<p align=center><img src=Imagenes/Accidente.png><p>

# Contenido

+ [Introduccion](#introduccion)
+ [ETL](#etl)
+ [EDA](#eda)
+ [Modelado con MySQL](#modelado-en-mysql)
+ [Dashboard](#dashboard)
+ [Concluciones](#concluciones)
+ [Adicionales](#adicionales)

# Introduccion

Poniendonos en un rol como Analista de datos, nos contactan de El Observatorio de Movilidad y Seguridad Vial (OMSV), centro de estudios que se encuentra bajo la órbita de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires y nos piden analisar los accidentes de transito en la ciudad de Buenos Aires. Para esto se nos proporciona un excel con datos de accidentes desde el año 2016 hasta el año 2021, de los cuales debemos sacar distintas metricas y KPI'S que nos permitan ver la accidentalidad en esta ciudad, y que tambien nos permita llegar a alguna conclucion para poder reducir esta tasa de accidentalidad.

# <h1 align=center> **Proceso** </h1>

# ETL

El primer paso para este proceso fue la limpieza de los datos suministrados en un formato `.xlsx`, para esto observamos que aunque no hay valores duplicados si hay valores faltantes.

<p align=center><img src=Imagenes/Informacion_DF.png><p>

Segun las necesidades del analisis decido eliminar por completo la columna de `Altitud` y en la columna de `Cruce` decido imputar los datos faltantes teniendo en cuenta la columna `Direccion Normalizada`, despues de esto procedo a tomar las columnas que voy a utilizar y guardo los dataframes en archivos CSV *(El proceso completo se encuentra en el notebook [ETL](Notebooks/ETL.ipynb))*.

# EDA
Dentro del EDA realice analisis de datos cuantitativos y cualitativos, a partir de los dataset anteriormente limpiados:
<p align=center><img src=Imagenes/Histograma.png><p>

Los demas graficos junto a sus resoectivos analicis se encuentran en el archivo [EDA](Notebooks/EDA.ipynb)

# Modelado en MySQL

Se creo una base de datos en el motor MySQL a partir de los archivos CSV, para esto se creo la base de datos y las tablas necesarias y se importaron los archivos CSV para asi llenar los campos de la base de datos (La base de datos se encuentra en la carpeta SQL con el nombre de [Accidentes de transito](SQL/Accidentes%20de%20transito.sql)).

<p align=center><img src=Imagenes/SQL.png><p>

Despues de esto unicamente se busca la ruta del archivo que se quiere seleccionar y se imputaran los datos automaticamente, quedando de la siguiente forma el diagrama de la base de datos:

<p align=center><img src=Imagenes/Modelo_SQL.png><p>


# Dashboard
Antes de realizar el dasboard, se debe realizar la coneccion de la base de datos para esto se llenaran los campos que se encuentran en la imagen (por ejemplo: Servidor: localhost:1111  Base de datos: Accidentes)

<p align=center><img src=Imagenes/PowerBI.png><p>

porcedi a ralizar las metricas que considere mas importantes y construi los KPI'S requeridos, todos estos se encuentran dentro del archivo [Dashboard_accidentes_transito_BA](Dashboard/Dashboard_accidentes_transito_BA.pbix).

<p align=center><img src=Imagenes/Dashboard.png><p>

# Concluciones
+ El sexo con mas tasa de accidentalidad es el hombre
+ Las horas en que mas frecuentemente se presentan accidentes son en las horas de la mañana
+ La comuna en la que mas accidentes se han presentado es en la comuna numero 1
+ Los dos agentes viales que mas sufren de accidentalidad son los conductores y los peatones.

# Adicionales

* Como conectar MySQL con PowerBI: [Video](https://www.youtube.com/watch?v=lVMtbnh5mYg&t=949s&ab_channel=ElkinRodriguezE.%7CEspecialistaBI)
* Como importar o exportar una base de datos MySQL: [Video](https://www.youtube.com/watch?v=jTs1nSwAcRM&ab_channel=CristianBallesteros)
* Fuente de datos: [Homicidios](https://docs.google.com/spreadsheets/d/1nq00jGIZHQ1RLSET43zKnUsMsoFb-pBg/edit#gid=1625530738)
