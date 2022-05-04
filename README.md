# testApps

<!-- badges: start -->

<!-- badges: end -->

The goal of `testApps` is to run some example shiny apps made by myself just for learning purpose.

## Installation

You can install the development version of `testApps` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("shafayetShafee/testApps")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(testApps)

# running an app
runTestApp("testApp01")

# to get list of names of shiny apps:
runTestApp()
# this will give error with all possible shiny names contained in the package.
```

## Credit

These shiny apps are made by following youtube videos, R views post. All I did just polishing the app using awesome `bs4Dash`, `echarts4r`, `waiter` etc. R packages.
