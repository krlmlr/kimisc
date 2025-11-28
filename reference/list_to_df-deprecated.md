# Converts a list to a name-value data frame

This function coerces its input to a list and returns a data frame with
as many rows as there are list items in the input, and two columns (one
for the names, one for the values). If the list is not named, the
natural sequence will be used as item names.

## Usage

``` r
list_to_df(list_for_df)
```

## Arguments

- list_for_df:

  The object to be converted to a data frame

## See also

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/reference/kimisc-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md),
[`thisfile-deprecated`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)
