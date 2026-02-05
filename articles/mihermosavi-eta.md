# mihermosaviñeta

``` r
library(mipaquetepractica)
```

## Introduccion

Este paquete permite analizar informacion academica de estudiantes a
partir de su promedio y nivel de asistencia. A partir de estos datos, se
puede obtener una clasificacion del rendimiento, el nivel de asistencia
y el estado general del estudiante.

Ademas, el paquete incluye un conjunto de datos con informacion sobre
los idiomas oficiales de distintos paises.

## Funciones del paquete

### Clasificacion del rendimiento academico

La funcion
[`calcular_rendimiento()`](https://biancaarossi.github.io/mipaquetepractica/reference/calcular_rendimiento.md)
clasifica a los estudiantes segun su promedio de calificaciones,
utilizando cuatro categorias: Excelente, Bueno, Regular e Insuficiente.

``` r
calcular_rendimiento(9)
#> [1] "Excelente"
calcular_rendimiento(c(10, 7, 5, 3))
#> [1] "Excelente"    "Bueno"        "Regular"      "Insuficiente"
```

### Clasificacion del nivel de asistencia

La funcion
[`nivel_asistencia()`](https://biancaarossi.github.io/mipaquetepractica/reference/nivel_asistencia.md)
clasifica la asistencia del estudiante, expresada como una proporcion
entre 0 y 1, en tres niveles: Alta, Media o Baja.

``` r
nivel_asistencia(0.85)
#> [1] "Alta"
nivel_asistencia(c(1, 0.75, 0.5))
#> [1] "Alta"  "Media" "Baja"
```

### Estado general del estudiante

La funcion
[`estado_estudiante()`](https://biancaarossi.github.io/mipaquetepractica/reference/estado_estudiante.md)
combina el rendimiento academico y el nivel de asistencia para
determinar el estado general del estudiante. Las posibles categorias son
Destacado, Regular y En riesgo.

``` r
estado_estudiante(9, 0.9)
#> [1] "Destacado"
estado_estudiante(c(9, 6, 3), c(0.9, 0.7, 0.4))
#> [1] "Destacado" "Regular"   "En riesgo"
```

## Dataset incluido en el paquete

### Idiomas oficiales por pais

El paquete incluye el dataset `idiomas`, que contiene informacion sobre
los idiomas oficiales de distintos paises. Para cada pais se indica el
idioma oficial principal y, cuando corresponde, un segundo idioma
oficial.

``` r
idiomas
#> # A tibble: 25 × 3
#>    pais        idioma_oficial_1 idioma_oficial_2
#>    <chr>       <chr>            <chr>           
#>  1 Argentina   español          NA              
#>  2 Bolivia     español          NA              
#>  3 Brasil      portugues        NA              
#>  4 Canadá      ingles           frances         
#>  5 Chile       español          NA              
#>  6 Colombia    español          NA              
#>  7 Costa Rica  español          NA              
#>  8 Cuba        español          NA              
#>  9 Ecuador     español          NA              
#> 10 El Salvador español          NA              
#> # ℹ 15 more rows
```

### Exploracion del dataset

A continuacion se muestran algunas operaciones basicas sobre el dataset.

``` r
head(idiomas)
#> # A tibble: 6 × 3
#>   pais      idioma_oficial_1 idioma_oficial_2
#>   <chr>     <chr>            <chr>           
#> 1 Argentina español          NA              
#> 2 Bolivia   español          NA              
#> 3 Brasil    portugues        NA              
#> 4 Canadá    ingles           frances         
#> 5 Chile     español          NA              
#> 6 Colombia  español          NA
str(idiomas)
#> spc_tbl_ [25 × 3] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
#>  $ pais            : chr [1:25] "Argentina" "Bolivia" "Brasil" "Canadá" ...
#>  $ idioma_oficial_1: chr [1:25] "español" "español" "portugues" "ingles" ...
#>  $ idioma_oficial_2: chr [1:25] NA NA NA "frances" ...
#>  - attr(*, "spec")=List of 3
#>   ..$ cols   :List of 3
#>   .. ..$ pais            : list()
#>   .. .. ..- attr(*, "class")= chr [1:2] "collector_character" "collector"
#>   .. ..$ idioma_oficial_1: list()
#>   .. .. ..- attr(*, "class")= chr [1:2] "collector_character" "collector"
#>   .. ..$ idioma_oficial_2: list()
#>   .. .. ..- attr(*, "class")= chr [1:2] "collector_character" "collector"
#>   ..$ default: list()
#>   .. ..- attr(*, "class")= chr [1:2] "collector_guess" "collector"
#>   ..$ delim  : chr ","
#>   ..- attr(*, "class")= chr "col_spec"
#>  - attr(*, "problems")=<externalptr>
```

## Conclusion

Este paquete ofrece herramientas simples para clasificar estudiantes
segun su rendimiento academico y nivel de asistencia, asi como un
dataset auxiliar con informacion sobre idiomas oficiales por pais. Las
funciones estan pensadas para trabajar tanto con valores individuales
como con vectores.
