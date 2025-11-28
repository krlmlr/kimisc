# Checks if values are outside of an interval (open on the left)

This function checks if the values in the `x` parameter are contained in
the interval (`lo`, `hi`\]. `NA` values are treated as "not in the
interval".

## Usage

``` r
nin.interval.lo(x, lo, hi)
```

## Arguments

- x:

  A vector of values. (Lists will be coerced to a numeric vector.)

- lo:

  Left end of the interval.

- hi:

  Right end of the interval.

## Value

A boolean vector of the same length as `x`.

## See also

[`in.interval.lo()`](http://krlmlr.github.io/kimisc/reference/in.interval.lo.md),
[`in.interval.ro()`](http://krlmlr.github.io/kimisc/reference/in.interval.ro.md),
[`nin.interval.ro()`](http://krlmlr.github.io/kimisc/reference/nin.interval.ro.md)

## Examples

``` r
nin.interval.lo(c(-1, 0, 1, 2), 0, 1)
#> [1]  TRUE  TRUE FALSE  TRUE
nin.interval.lo(NA, 1, 3)
#> [1] TRUE
```
