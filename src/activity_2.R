library(tidyverse)
library(ggplot2)

crear_grafico <- function(df) {
  ggplot(df, aes(x = countermovement_depth, y = concentric_mean_power_bm)) +
    geom_point() +
    labs(x = "Profundidad del contramovimiento",
         y = "Potencia media concéntrica") +
    ggtitle("Relación entre potencia y profundidad")
}

crear_grafico_serie_tiempo <- function(df) {
  ggplot(df, aes(x = test_date, y = rsi_modified)) +
    geom_line() +
    labs(x = "Fecha", y = "RSI Modificado") +
    ggtitle("Evolución del RSI Modificado")
}

# Paso 1
jumps <- read_csv("/workdir/datos/actividad_2_fp.csv", show_col_types = FALSE)

# Paso 2
p <- jumps |>
  crear_grafico()
ggsave("results/step2.png")
# Paso 3
jumps |> filter(player_id == 4317) |> crear_grafico_serie_tiempo()
ggsave("results/step3.png")

# Paso 4
p <- jumps |>
  filter(test_date == "2021-02-26") |>
  mutate(estudio = case_when(player_id == 2993 ~ "1", TRUE ~ "2")) |>
  ggplot(aes(reorder(as.factor(player_id), -concentric_peak_force), concentric_peak_force)) +
  geom_col(aes(fill=estudio)) +
  labs(y = "Fuerza máxima alcanzada durante la fase concéntrica", x = "Jugadores")
ggsave("results/step4.png")

p + facet_wrap(~position, scales = "free")
ggsave("results/step5.png")
