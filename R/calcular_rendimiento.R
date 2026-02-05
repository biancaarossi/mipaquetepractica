#' Clasifica el rendimiento academico segun el promedio
#'
#' Esta funcion recibe un promedio (o un vector de promedios) y devuelve
#' una categoria de rendimiento academico. El promedio debe ser numerico,
#' no contener valores NA y estar entre 0 y 10.
#'
#' @param promedio Un numero o vector numerico que representa el promedio
#'   de calificaciones del estudiante.
#'
#' @returns Un vector de caracteres con la categoria de rendimiento:
#'   "Excelente", "Bueno", "Regular" o "Insuficiente".
#'
#' @export
calcular_rendimiento <- function(promedio) {
  promedio
}
#'
#' @examples
#' calcular_rendimiento(9)
#' calcular_rendimiento(6.5)
#' calcular_rendimiento(c(10, 7, 4, 2))
calcular_rendimiento <- function(promedio) {

  if (!is.numeric(promedio)) {
    cli::cli_abort("El promedio debe ser numerico")
  }

  if (any(is.na(promedio))) {
    cli::cli_abort("El promedio no puede contener NA")
  }

  if (any(promedio < 0 | promedio > 10)) {
    cli::cli_abort("El promedio debe estar entre 0 y 10")
  }

  rendimiento <- dplyr::case_when(
    promedio >= 8 ~ "Excelente",
    promedio >= 6 ~ "Bueno",
    promedio >= 4 ~ "Regular",
    TRUE ~ "Insuficiente"
  )

  rendimiento
}
