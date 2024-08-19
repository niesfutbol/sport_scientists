library(tidyverse)

speed <- read_csv("/workdir/datos/actividad_1.csv")

player_without_info <- speed |>
  filter(`Total Duration` == 0) |>
  pull(name)

mean_speed_by_position <- speed |>
  filter(`Total Duration` != 0) |>
  group_by(position_name) |>
  summarize(mean_speed = mean(`High speed distance (m)`)) |>
  arrange(mean_speed)