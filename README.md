<a href="https://www.nies.futbol/"><img
src="https://github.com/nepito/world_cup_semis/blob/develop/img/logo.jpeg" align="right" width="256"
/></a>

# Sport Scientists
[![codecov](https://codecov.io/gh/niesfutbol/sofa_score_data/graph/badge.svg?token=vRIPoR2OZA)](https://codecov.io/gh/niesfutbol/sofa_score_data)

## Step to use

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
1. Seleccione únicamente las columnas creadas y adjunte una captura con el resumen numérico de cada una de ellas utilizando la función summary().