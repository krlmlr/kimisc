# Converts a time value given as number of seconds since midnight to the H:M:S format

This function is very similar to `strftime` with the `%X` conversion
specification. Hour values larger than 24 are permitted. Fractions will
be rounded down to the next integer. Non-numeric values are coerced to
`NA` with a warning.

## Usage

``` r
seconds.to.hms(x)
```

## Arguments

- x:

  A (vector of) numbers.

## Value

A (vector of) character values of the same length as `x`.

## See also

[`base::strftime()`](https://rdrr.io/r/base/strptime.html)

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/sample.rows-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)

## Examples

``` r
seconds.to.hms(c(1, 60, 3600.5))
#> `seconds.to.hms()` is deprecated, use `hms::as.character()()` instead.
#> [1] "00:00:01" "00:01:00" "01:00:00"
seconds.to.hms(c(100000, -4000.5))
#> [1] "27:46:40"  "-01:06:41"
seconds.to.hms("invalid")
#> Warning: NAs introduced by coercion
#> [1] NA
```
