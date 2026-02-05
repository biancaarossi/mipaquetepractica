#' Determina el estado del estudiante
#'
#' Esta funcion combina el rendimiento academico y el nivel de asistencia
#' para clasificar el estado general del estudiante. Utiliza las funciones
#' `calcular_rendimiento()` y `nivel_asistencia()` para obtener las categorias
#' intermedias.
#'
#' @param promedio Un numero o vector numerico que representa el promedio
#'   de calificaciones del estudiante, con valores entre 0 y 10.
#'
#' @param asistencia Un numero o vector numerico que representa la asistencia
#'   del estudiante, expresada como una proporcion entre 0 y 1.
#'
#' @returns Un vector de caracteres con el estado del estudiante:
#'   "Destacado", "Regular" o "En riesgo".
#'
#' @export
#'
#' @examples
#' estado_estudiante(9, 0.9)
#' estado_estudiante(7, 0.7)
#' estado_estudiante(c(9, 5, 3), c(0.9, 0.6, 0.4))
estado_estudiante <- function(promedio, asistencia) {

  if (missing(promedio) | missing(asistencia)) {
    cli::cli_abort("Se deben proporcionar promedio y asistencia")
  }

  rendimiento <- calcular_rendimiento(promedio)
  asistencia_nivel <- nivel_asistencia(asistencia)

  estado <- dplyr::case_when(
    rendimiento == "Excelente" & asistencia_nivel == "Alta" ~ "Destacado",
    rendimiento %in% c("Excelente", "Bueno") & asistencia_nivel != "Baja" ~ "Regular",
    TRUE ~ "En riesgo"
  )

  estado
}

