# Smart named vector

This function is a wrapper around [`c()`](https://rdrr.io/r/base/c.html)
that assigns names to unnamed arguments based on the unevaluated
expression used in the call.

## Usage

``` r
nc(...)
```

## Arguments

- ...:

  Vector elements, possibly named

## Value

A named vector.

## References

<https://stackoverflow.com/a/5043280/946850>

## See also

[`c()`](https://rdrr.io/r/base/c.html),
[`nlist()`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md)

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)

## Author

Hadley Wickham

## Examples

``` r
a <- 1
b <- 2
c <- 3
nc(a, b, d = c)
#> `nc()` is deprecated, use `tibble::lst()` instead.
#> a b d 
#> 1 2 3 
nc(mean(c(a, b, c)))
#> mean(c(a, b, c)) 
#>                2 
```
