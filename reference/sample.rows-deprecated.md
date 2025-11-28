# Random Samples and Permutations for Data Frames

This function takes a sample of the specified size from the rows of `x`
using either with or without replacement.

## Usage

``` r
sample.rows(x, size, replace = FALSE, prob = NULL)
```

## Arguments

- x:

  A data frame.

- size:

  A non-negative integer giving the number of items to choose.

- replace:

  Should sampling be with replacement?

- prob:

  A vector of probability weights for obtaining the rows of the data
  frame being sampled.

## Value

A data frame of the same shape as `x`.

## Details

This function internally calls
[`sample.int()`](https://rdrr.io/r/base/sample.html).

## See also

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)

## Examples

``` r
set.seed(42)
sample.rows(
  data.frame(a = c(1, 2, 3), b = c(4, 5, 6), row.names = c("a", "b", "c")),
  10,
  replace = TRUE
)
#> `sample.rows()` is deprecated, use `dplyr::sample_n()` instead.
#>     a b
#> a   1 4
#> a.1 1 4
#> a.2 1 4
#> a.3 1 4
#> b   2 5
#> b.1 2 5
#> b.2 2 5
#> a.4 1 4
#> c   3 6
#> c.1 3 6
```
