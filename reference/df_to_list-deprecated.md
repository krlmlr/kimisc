# Converts a name-value data frame to a named list

This function converts a data frame back to a list. It is the reverse
operation to
[`list_to_df()`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md).

## Usage

``` r
df_to_list(df_for_list)
```

## Arguments

- df_for_list:

  The data frame to be converted to a list

## Details

In a data frame with more than two columns, heuristics are applied to
detect the name and value column.

## See also

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)
