library(tidyverse)

gps <- read_csv("/workdir/datos/Actividad 1 - data_gps_act1_c2.csv", show_col_types = FALSE)
player_position <- read_csv("/workdir/datos/Actividad 1 - data_positions_act1_c2.csv", show_col_types = FALSE)

change_to_m_s <- function(speed_km_h) {
  speed_m_s <- speed_km_h * (1000) * (1/3600)
}

gps_pro_12 <- gps |>
  filter(player_display_name == "Pro 12") |>
  mutate(
    speed_m_s = change_to_m_s(speed_km_h),
    acceleration = (speed_m_s - lag(speed_m_s))/0.1,
    acceleration_abs = abs(acceleration)
  )