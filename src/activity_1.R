library(tidyverse)

speed <- read_csv("/workdir/datos/actividad_1.csv", show_col_types = FALSE)

player_without_info <- speed |>
  filter(total_duration == 0) |>
  pull(name)

mean_speed_by_position <- speed |>
  filter(total_duration != 0) |>
  group_by(position_name) |>
  summarize(mean_speed = mean(high_speed_distance)) |>
  arrange(mean_speed)

print(mean_speed_by_position)