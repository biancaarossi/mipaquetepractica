test_that("estado_estudiante clasifica correctamente casos individuales", {

  # Excelente + Alta
  expect_equal(
    estado_estudiante(9, 0.9),
    "Destacado"
  )

  # Bueno + Media
  expect_equal(
    estado_estudiante(7, 0.7),
    "Regular"
  )

  # Regular + Baja
  expect_equal(
    estado_estudiante(5, 0.4),
    "En riesgo"
  )

})

test_that("estado_estudiante funciona correctamente con vectores", {

  promedios <- c(9, 7, 3)
  asistencias <- c(0.9, 0.7, 0.4)

  esperado <- c(
    "Destacado",
    "Regular",
    "En riesgo"
  )

  expect_equal(
    estado_estudiante(promedios, asistencias),
    esperado
  )

})
