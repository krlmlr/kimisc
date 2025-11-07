# Smart named list

This function is a wrapper around
[`list()`](https://rdrr.io/r/base/list.html) that assigns names to
unnamed arguments based on the unevaluated expression used in the call.

## Usage

``` r
nlist(...)
```

## Arguments

- ...:

  List items, possibly named

## Value

A named list.

## References

<https://stackoverflow.com/a/5043280/946850>

## See also

[`list()`](https://rdrr.io/r/base/list.html)

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nc-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)

## Author

Hadley Wickham

## Examples

``` r
a <- 1
b <- 2
c <- 3
nlist(a, b, d = c)
#> $a
#> [1] 1
#> 
#> $b
#> [1] 2
#> 
#> $d
#> [1] 3
#> 
nlist(mean(c(a, b, c)))
#> $`mean(c(a, b, c))`
#> [1] 2
#> 
```
