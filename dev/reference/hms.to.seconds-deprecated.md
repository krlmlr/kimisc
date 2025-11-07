# Converts a time value given in H:M:S format to the number of seconds since midnight

This function is very similar to `strptime` with the `%X` conversion
specification. Anything with three numbers between two colons is
interpreted as a time, no consistency check is performed on the actual
hour, minute and second values. Thus, strings like 25:15:00 and
23:78:101 also will be converted. Incorrectly formatted strings are
converted to `NA` with a warning.

## Usage

``` r
hms.to.seconds(x)
```

## Arguments

- x:

  A (vector of) strings in H:M:S format.

## Value

A (vector of) integer values of the same length as `x`.

## See also

[`base::strptime()`](https://rdrr.io/r/base/strptime.html)

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md),
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
hms.to.seconds(c("00:00:01", "00:01:00", "01:00:00"))
#> `hms.to.seconds()` is deprecated, use `hms::parse_hms()` instead.
#> [1]    1   60 3600
hms.to.seconds(c("25:15:00", "23:78:101"))
#> [1] 90900 87581
hms.to.seconds("invalid")
#> Warning: NAs introduced by coercion
#> [1] NA
```
