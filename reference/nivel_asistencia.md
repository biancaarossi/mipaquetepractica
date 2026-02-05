# Clasifica el nivel de asistencia

Esta funcion clasifica el nivel de asistencia de un estudiante a partir
de un valor numerico entre 0 y 1. La asistencia no puede contener
valores NA y debe expresarse como proporcion.

## Usage

``` r
nivel_asistencia(asistencia)
```

## Arguments

- asistencia:

  Un numero o vector numerico que representa la asistencia del
  estudiante, expresada como una proporcion entre 0 y 1.

## Value

Un vector de caracteres con el nivel de asistencia: "Alta", "Media" o
"Baja".

## Examples

``` r
nivel_asistencia(0.9)
#> [1] "Alta"
nivel_asistencia(0.65)
#> [1] "Media"
nivel_asistencia(c(1, 0.75, 0.5))
#> [1] "Alta"  "Media" "Baja" 
```
