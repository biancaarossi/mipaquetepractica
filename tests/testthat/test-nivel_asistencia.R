test_that("nivel_asistencia clasifica correctamente valores individuales", {

  expect_equal(nivel_asistencia(0.9), "Alta")
  expect_equal(nivel_asistencia(0.8), "Alta")
  expect_equal(nivel_asistencia(0.65), "Media")
  expect_equal(nivel_asistencia(0.6), "Media")
  expect_equal(nivel_asistencia(0.3), "Baja")

})

test_that("nivel_asistencia funciona correctamente con vectores", {

  asistencias <- c(1, 0.8, 0.6, 0.4)

  esperado <- c(
    "Alta",
    "Alta",
    "Media",
    "Baja"
  )

  expect_equal(nivel_asistencia(asistencias), esperado)

})
