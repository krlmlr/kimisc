# Order-preserving factors

The function `ofactor()` is a convenience wrapper for
[`factor()`](https://rdrr.io/r/base/factor.html) that orders the levels
as they appear in the data if the `levels` argument is not specified.

## Usage

``` r
ofactor(x = character(), ...)
```

## Arguments

- x:

  A vector of data, usually taking a small number of distinct values.

- ...:

  Other arguments passed on to
  [`base::factor()`](https://rdrr.io/r/base/factor.html).

## Value

A factor. See [`base::factor()`](https://rdrr.io/r/base/factor.html) for
details.

## See also

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/nlist-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)

## Examples

``` r
ofactor(3:1)
#> `ofactor()` is deprecated, use `forcats::fct_inorder()` instead.
#> [1] 3 2 1
#> Levels: 3 2 1
ofactor(9:12, exclude = 11)
#> [1] 9    10   <NA> 12  
#> Levels: 9 10 12
identical(ofactor(3:1, levels = 1:3), factor(3:1))
#> [1] TRUE
```
