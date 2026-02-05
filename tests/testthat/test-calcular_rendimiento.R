test_that("calcular_rendimiento clasifica correctamente promedios individuales", {

  expect_equal(calcular_rendimiento(9), "Excelente")
  expect_equal(calcular_rendimiento(7), "Bueno")
  expect_equal(calcular_rendimiento(5), "Regular")
  expect_equal(calcular_rendimiento(2), "Insuficiente")

})

test_that("calcular_rendimiento funciona con vectores", {

  promedios <- c(10, 8, 6, 4, 1)

  esperado <- c(
    "Excelente",
    "Excelente",
    "Bueno",
    "Regular",
    "Insuficiente"
  )

  expect_equal(calcular_rendimiento(promedios), esperado)

})

