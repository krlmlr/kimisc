# Generalized lagged differences

Returns suitably lagged and iterated differences using arbitrary
difference functions.

## Usage

``` r
gdiff(x, lag = 1L, differences = 1L, FUN = `-`, ...)
```

## Arguments

- x:

  a numeric vector or matrix containing the values to be differenced.

- lag:

  an integer indicating which lag to use.

- differences:

  an integer indicating the order of the difference.

- FUN:

  A distance function that accepts two parameters

- ...:

  further arguments to be passed to or from methods.

## Value

If x is a vector of length `n` and `differences = 1`, then the computed
result is equal to the successive differences
`FUN(x[(1+lag):n], x[1:(n-lag)])`.

If `difference` is larger than one this algorithm is applied recursively
to `x`. Note that the returned value is a vector which is shorter than
`x`.

If `x` is a matrix then the difference operations are carried out on
each column separately.

## See also

[`base::diff()`](https://rdrr.io/r/base/diff.html)

## Examples

``` r
gdiff(1:4)
#> [1] 1 1 1
gdiff(1:4, FUN = `/`)
#> [1] 2.000000 1.500000 1.333333
```
