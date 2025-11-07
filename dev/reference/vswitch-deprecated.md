# Vectorized switch

The function `vswitch` is a vectorized version of
[`base::switch()`](https://rdrr.io/r/base/switch.html) optimized for
performance.

## Usage

``` r
vswitch(EXPR, ...)
```

## Arguments

- EXPR:

  an expression evaluating to a number or a character string.

- ...:

  the list of alternatives. If it is intended that `EXPR` has a
  character-string value these will be named, perhaps except for one
  alternative to be used as a ‘default’ value.

## Value

The value of one of the elements of `...`, or `NA` whenever no element
is selected. Contrary to
[`base::switch()`](https://rdrr.io/r/base/switch.html) the result is
always visible.

## Details

Only the `EXPR` argument is treated as a vector. In particular, if any
of the alternatives (or the default alternative) is a vector, the result
will be a list of vectors.

## See also

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
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md)
