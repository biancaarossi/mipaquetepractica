#' Clasifica el nivel de asistencia
#'
#' Esta funcion clasifica el nivel de asistencia de un estudiante a partir
#' de un valor numerico entre 0 y 1. La asistencia no puede contener valores
#' NA y debe expresarse como proporcion.
#'
#' @param asistencia Un numero o vector numerico que representa la asistencia
#'   del estudiante, expresada como una proporcion entre 0 y 1.
#'
#' @returns Un vector de caracteres con el nivel de asistencia:
#'   "Alta", "Media" o "Baja".
#'
#' @export
#'
#' @examples
#' nivel_asistencia(0.9)
#' nivel_asistencia(0.65)
#' nivel_asistencia(c(1, 0.75, 0.5))
nivel_asistencia <- function(asistencia) {

  if (!is.numeric(asistencia)) {
    cli::cli_abort("La asistencia debe ser numerica")
  }

  if (any(is.na(asistencia))) {
    cli::cli_abort("La asistencia no puede contener NA")
  }

  if (any(asistencia < 0 | asistencia > 1)) {
    cli::cli_abort("La asistencia debe estar entre 0 y 1")
  }

  nivel <- dplyr::case_when(
    asistencia >= 0.8 ~ "Alta",
    asistencia >= 0.6 ~ "Media",
    TRUE ~ "Baja"
  )

  nivel
}
