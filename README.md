
# migration

<!-- badges: start -->
<!-- badges: end -->

The goal of migration is to quickly and easily migrate all your R packages from one computer to another. 

## Installation

You can install the development version of migration like so:

``` r
library(devtools)

devtools::install_github(repo = "https://github.com/KevinNavarreteParra/migration.git")
```

## Example

This is a basic example which shows you how to solve a common problem:

You would first run `get_packages` on your original computer to retrieve a list of your user-installed packages. 

``` r
library(migration)
get_packages("~/package_list.txt")
```

You would then send the file you generated to your new computer, where you can use it to install all of your packages. 

``` r
library(migration)
bulk_install("~/package_list.txt")
```
