# Clasifica el rendimiento academico segun el promedio

Esta funcion recibe un promedio (o un vector de promedios) y devuelve
una categoria de rendimiento academico. El promedio debe ser numerico,
no contener valores NA y estar entre 0 y 10.

## Usage

``` r
calcular_rendimiento(promedio)

calcular_rendimiento(promedio)
```

## Arguments

- promedio:

  Un numero o vector numerico que representa el promedio de
  calificaciones del estudiante.

## Value

Un vector de caracteres con la categoria de rendimiento: "Excelente",
"Bueno", "Regular" o "Insuficiente".

## Examples

``` r
calcular_rendimiento(9)
#> [1] "Excelente"
calcular_rendimiento(6.5)
#> [1] "Bueno"
calcular_rendimiento(c(10, 7, 4, 2))
#> [1] "Excelente"    "Bueno"        "Regular"      "Insuficiente"
```
