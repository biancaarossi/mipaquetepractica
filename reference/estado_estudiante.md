# Determina el estado del estudiante

Esta funcion combina el rendimiento academico y el nivel de asistencia
para clasificar el estado general del estudiante. Utiliza las funciones
[`calcular_rendimiento()`](https://biancaarossi.github.io/mipaquetepractica/reference/calcular_rendimiento.md)
y
[`nivel_asistencia()`](https://biancaarossi.github.io/mipaquetepractica/reference/nivel_asistencia.md)
para obtener las categorias intermedias.

## Usage

``` r
estado_estudiante(promedio, asistencia)
```

## Arguments

- promedio:

  Un numero o vector numerico que representa el promedio de
  calificaciones del estudiante, con valores entre 0 y 10.

- asistencia:

  Un numero o vector numerico que representa la asistencia del
  estudiante, expresada como una proporcion entre 0 y 1.

## Value

Un vector de caracteres con el estado del estudiante: "Destacado",
"Regular" o "En riesgo".

## Examples

``` r
estado_estudiante(9, 0.9)
#> [1] "Destacado"
estado_estudiante(7, 0.7)
#> [1] "Regular"
estado_estudiante(c(9, 5, 3), c(0.9, 0.6, 0.4))
#> [1] "Destacado" "En riesgo" "En riesgo"
```
