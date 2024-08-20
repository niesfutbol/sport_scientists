library(tidyverse)

speed <- read_csv("/workdir/datos/actividad_1.csv", show_col_types = FALSE)

player_without_info <- speed |>
  filter(total_duration == 0) |>
  pull(name)

cleaned_speed <- speed |>
  filter(total_duration != 0)

mean_speed_by_position <- cleaned_speed |>
  filter(total_duration != 0) |>
  group_by(position_name) |>
  summarize(mean_speed = mean(high_speed_distance)) |>
  arrange(mean_speed)

print(mean_speed_by_position)

max_speed <- cleaned_speed |>
  pull(`Maximum Velocity (km/h)`) |>
  max()

print(max_speed)

max_speed <- cleaned_speed |>
  filter(`Maximum Velocity (km/h)` > 40) |>
  arrange(`Maximum Velocity (km/h)`) |>
  print()

new_speed <- cleaned_speed |>
  mutate(
    mean_speed = total_distance / total_duration,
    percentage_max_speed = `Maximum Velocity (km/h)`*100/`Player Peak Velocity`,
    high_intensity_acceleration = `Acceleration B2 Efforts (Gen 2)` + `Acceleration B3 Efforts (Gen 2)`
  ) |>
  select(c(mean_speed, percentage_max_speed, high_intensity_acceleration))