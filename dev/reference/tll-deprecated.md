# Transposes a list of lists

The argument is assumed to be a list of \\n\\ (named) lists with length
\\m\\ each. It is converted to a (named) list of \\m\\ elements with
length \\n\\ each.

## Usage

``` r
tll(l)
```

## Arguments

- l:

  List of lists, possibly named.

## Value

A list of lists corresponding to a transposition of the argument.

## See also

[`base::t()`](https://rdrr.io/r/base/t.html)

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
[`vswitch-deprecated`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)

## Examples

``` r
tll(list(list(1, 2), list(3, 4)))
#> `tll()` is deprecated, use `purrr::transpose()` instead.
#> [[1]]
#> [[1]][[1]]
#> [1] 1
#> 
#> [[1]][[2]]
#> [1] 3
#> 
#> 
#> [[2]]
#> [[2]][[1]]
#> [1] 2
#> 
#> [[2]][[2]]
#> [1] 4
#> 
#> 
tll(list(list(a = 1, b = 2), list(a = 3, b = 4)))
#> $a
#> $a[[1]]
#> [1] 1
#> 
#> $a[[2]]
#> [1] 3
#> 
#> 
#> $b
#> $b[[1]]
#> [1] 2
#> 
#> $b[[2]]
#> [1] 4
#> 
#> 
tll(list(x = list(a = 1, b = 2), y = list(a = 3, b = 4)))
#> $a
#> $a$x
#> [1] 1
#> 
#> $a$y
#> [1] 3
#> 
#> 
#> $b
#> $b$x
#> [1] 2
#> 
#> $b$y
#> [1] 4
#> 
#> 
```
