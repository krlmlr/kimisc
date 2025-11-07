# Checks if values are outside of an interval (open on the right)

This function checks if the values in the `x` parameter are contained in
the interval \[`lo`, `hi`). `NA` values are treated as "not in the
interval".

## Usage

``` r
nin.interval.ro(x, lo, hi)
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

[`in.interval.lo()`](http://krlmlr.github.io/kimisc/dev/reference/in.interval.lo.md),
[`in.interval.ro()`](http://krlmlr.github.io/kimisc/dev/reference/in.interval.ro.md),
[`nin.interval.lo()`](http://krlmlr.github.io/kimisc/dev/reference/nin.interval.lo.md)

## Examples

``` r
nin.interval.ro(c(-1, 0, 1, 2), 0, 1)
#> [1]  TRUE FALSE  TRUE  TRUE
nin.interval.ro(NA, 1, 3)
#> [1] TRUE
```
