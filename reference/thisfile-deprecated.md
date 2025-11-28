# Determines the path of the currently running script

R does not store nor export the path of the currently running script.
This is an attempt to circumvent this limitation by applying heuristics
(such as call stack and argument inspection) that work in many cases.

## Usage

``` r
thisfile()

thisfile_source()

thisfile_r()

thisfile_rscript()

thisfile_knit()
```

## Value

The path of the currently running script, NULL if it cannot be
determined.

## Details

This functions currently work only if the script was `source`d,
processed with `knitr`, or run with `Rscript` or using the `--file`
parameter to the `R` executable. For code run with `Rscript`, the exact
value of the parameter passed to `Rscript` is returned.

## References

<https://stackoverflow.com/q/1815606/946850>

## See also

[`base::source()`](https://rdrr.io/r/base/source.html),
[`utils::Rscript()`](https://rdrr.io/r/utils/Rscript.html),
[`base::getwd()`](https://rdrr.io/r/base/getwd.html)

Other deprecated functions:
[`coalesce.na-deprecated`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md),
[`df_to_list-deprecated`](http://krlmlr.github.io/kimisc/reference/df_to_list-deprecated.md),
[`hms.to.seconds-deprecated`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md),
[`kimisc-deprecated`](http://krlmlr.github.io/kimisc/reference/kimisc-deprecated.md),
[`list_to_df-deprecated`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md),
[`nc-deprecated`](http://krlmlr.github.io/kimisc/reference/nc-deprecated.md),
[`nlist-deprecated`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md),
[`ofactor-deprecated`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md),
[`sample.rows-deprecated`](http://krlmlr.github.io/kimisc/reference/sample.rows-deprecated.md),
[`seconds.to.hms-deprecated`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md),
[`tll-deprecated`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md),
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)

## Author

Kirill Müller, Hadley Wickham, Michael R. Head

## Examples

``` r
if (FALSE) { # \dontrun{
thisfile()
} # }
```
