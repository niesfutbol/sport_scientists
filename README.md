<a href="https://www.nies.futbol/"><img
src="https://github.com/nepito/world_cup_semis/blob/develop/img/logo.jpeg" align="right" width="256"
/></a>

# Sport Scientists
[![codecov](https://codecov.io/gh/niesfutbol/sofa_score_data/graph/badge.svg?token=vRIPoR2OZA)](https://codecov.io/gh/niesfutbol/sofa_score_data)

## Introducción a la Programación en R para Análisis de Datos Físicos
To run
``` bash
docker-compose up --detach rstudio
```
### Rstudio
- **User**: `rstudio`
- **PASSWORD**: `yourpassword`

### Activity 1

1. Importe el archivo de datos.
1. Haga una primera exploración de la estructura y adjunte una captura de pantalla que muestre el número de columnas y filas de la tabla de datos, así como el formato de cada una de las columnas.
1. Asigne nombres adecuados a cada una de las columnas.
1. Escriba el nombre del jugador que no tiene datos registrados, y elimínelo de la tabla de datos utilizando un filtro sencillo.
1. Adjunte una captura de pantalla con el promedio de la variable “High speed distance (m)” para cada una de las posiciones.
1. Descubra el valor máximo de la columna “Maximum Velocity (km/h)”, escriba la función utilizada en la columna y el valor obtenido. A continuación, en la tabla de datos, filtre todos los valores de esa columna mayores a 40km/h.
1. Cree las siguientes columnas:
    - Distancia por minuto de la sesión (relación entre la distancia total y la duración de la sesión).
    - % de máxima velocidad alcanzada (relación entre la velocidad máxima de la sesión y la del
     perfil del jugador).
    - Aceleraciones de B2-B3 para contemplar aceleraciones de alta intensidad.
1. Seleccione únicamente las columnas creadas y adjunte una captura con el resumen numérico de cada
   una de ellas utilizando la función summary().

### Activity 2

1. Importe el archivo de datos (indique el directorio de trabajo en RStuido, y utilice la función read.csv() para importar los datos).
1. Utilice un gráfico que permita explorar la relación entre las variables “concentric_mean_power_bm” y “countermovement_depth”. Adjunte la captura de pantalla.
1. Filtre los datos del Jugador 4317 y utilice un gráfico que permita ver la tendencia de los valores de “rsi_modified”. Adjunte la captura de pantalla.
1. Filtre el día 2021-02-26 y con la variable “concentric_peak_force” utilice una visualización que haga un ranking de mayor a menor de los jugadores. Coloreando de distinto color al resto al Jugador 2993. Adjunte la captura de pantalla.
1. Repita el mismo gráfico que en el punto 4 pero en este caso haga servir múltiples paneles, uno
   por cada posición. Adjunte la captura de pantalla.

## Análisis Estadístico y la Visualización
### Activity 1
1. Importar ambas bases de datos
1. Exploración de ambos archivos:
    - Vista del archivo “Actividad 1 - data_positions_act1_c2” y con el archivo
    “Actividad 1 - data_gps_act1_c2” filtrar al player_display_name = Pro 12 y visualizar la señal de velocidad en el tiempo.
1. Con el archivo “Actividad 1 - data_gps_act1_c2”, por cada uno de los jugadores calcular:
    - la variable velocidad, pero en metros por segundo.
    - A partir de la señal de velocidad usar el incremento de tiempo para calcular la aceleración en
      metros por segundo al cuadrado
    - Finalmente, obtener el valor de la aceleración en valores absolutos.
1. Por cada jugador, obtener el valor promedio de la velocidad en m/s y de la acceleration density (valor promedio de la aceleración absoluta).
1. Unir los resultados con la tabla “Actividad 1 - data_positions_act1_c2” para obtener el promedio
   de los promedios por posición.

### Activity 2
Para esta actividad utilizaremos datos obtenidos durante un test de salto (Countermovement Jump) en una plataforma de fuerza. Estos datos están estructurados de la siguiente manera:

1. Columna player_id: Muestra el identificador del jugador
1. 11 variables restantes: Valores promedio de 5 saltos en el test CMJ, de distintas variables
   (nombre de la columna) del proveedor de datos.

El objetivo de esta actividad es realizar una exploración de la tabla de datos, mediante la cual pretendemos encontrar correlaciones entre variables.

A partir de la identificación de estas correlaciones, construiremos un modelo lineal que busque estimar la variable `Jump Height (Flight Time)`, utilizando una columna de la tabla de datos como variable dependiente. La variable `Jump Height (Flight Time)` está representada en cm.

