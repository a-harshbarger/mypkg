
# mypkg

<!-- badges: start -->
[![R-CMD-check](https://github.com/a-harshbarger/mypkg/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/a-harshbarger/mypkg/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of mypkg is to be my first package! Yay! If you tell it your name and whether you want a recommendation for something to bake, it will greet you and suggest part of a recipe from the baked_goods dataset (included).

This package is modified from the workshop "Workshop 3: Making your first R package" hosted by Eric R. Scott at the 2023 SORTEE conference.

## Installation

You can install the development version of mypkg like so:

``` r
pak::pkg_install(“a-harshbarger/mypkg”)
```

## Examples

See examples below of the function with and without names & baked good requests.

``` r
library(mypkg)
## basic example code

#Default
greet()

#Supply user name argument only
greet("Annie")

#Supply name and ask for a recommendation
gret(name = "Annie", bakedgood = TRUE)
```

