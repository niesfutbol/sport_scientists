library(tidyverse)

# Paso 1
jumps <- read_csv("/workdir/datos/actividad_2_fp.csv", show_col_types = FALSE)

# Paso 3
jumps |> filter(player_id == 4317)

# Paso 4
jumps |> filter(test_date == 2021-02-26)