# Replaces NA values

This (vectorized) function returns the first non-`NA` argument, similar
to the SQL function `COALESCE`. If a vector or matrix is passed as first
argument, the remaining arguments are recycled to generate a
vector/matrix of the same dimension, and coalescing is done element by
element.

## Usage

``` r
coalesce.na(x, ...)
```

## Arguments

- x:

  The first value to coalesce.

- ...:

  Other values to coalesce.

## Value

A vector of the same length as `x`.

## See also

Other deprecated functions:
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)

## Examples

``` r
coalesce.na(NA, -1)
#> `coalesce.na()` is deprecated, use `dplyr::coalesce()` instead.
#> [1] -1
coalesce.na(5, 3)
#> [1] 5
coalesce.na(c(1, NA, NA), c(NA, 2))
#> Warning: object length is not a multiple of first object length
#> [1]  1  2 NA
coalesce.na(matrix(c(NA, 1:3), nrow = 2))
#>      [,1] [,2]
#> [1,]   NA    2
#> [2,]    1    3
coalesce.na(NA)
#> [1] NA
```
