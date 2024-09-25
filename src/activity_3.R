library(tidyverse)

gps <- read_csv("/workdir/datos/Actividad 1 - data_gps_act1_c2.csv", show_col_types = FALSE)
player_position <- read_csv("/workdir/datos/Actividad 1 - data_positions_act1_c2.csv", show_col_types = FALSE)

gps |>
  dplyr::filter(player_display_name == "Pro 12") |>
  glimpse()

player_position |>
  dplyr::filter(player_display_name == "Pro 12") |>
  glimpse()

change_to_m_s <- function(speed_km_h) {
  speed_m_s <- speed_km_h * (1000) * (1/3600)
}

gps_pro <- gps |>
  mutate(
    speed_m_s = change_to_m_s(speed_km_h),
    acceleration = (speed_m_s - lag(speed_m_s))/0.1,
    acceleration_abs = abs(acceleration)
  ) |>
  group_by(player_display_name) |>
  summarize(
    speed = mean(speed_m_s, na.rm = T),
    acceleration_density = mean(acceleration_abs, na.rm = T)
    )

gps_pro_position <- gps_pro |>
  left_join(player_position, by = "player_display_name") |>
  group_by(Position) |>
  summarize(
    speed = mean(speed, na.rm = T),
    acceleration_density = mean(acceleration_density, na.rm = T)
    )

