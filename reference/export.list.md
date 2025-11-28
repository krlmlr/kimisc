# Exports to an environment

This function is a wrapper around
[`assign()`](https://rdrr.io/r/base/assign.html) that exports the
contents of a named list to an environment. The variable names in the
target environment are constructed from the names of the list items or
taken from a separate argument.

## Usage

``` r
export.list(arg.list, arg.names = names(arg.list), target.env = .GlobalEnv)
```

## Arguments

- arg.list:

  list of objects, possibly named.

- arg.names:

  names to use for the items in the target environment. Use the names of
  `arg.list` by default.

- target.env:

  The target environment. Use the global environment by default.

## Value

Invisible `NULL`.

## References

<https://stackoverflow.com/a/17484932/946850>

## See also

[`export()`](http://krlmlr.github.io/kimisc/reference/export.md),
[`assign()`](https://rdrr.io/r/base/assign.html)

## Author

Roland

## Examples

``` r
export.list(list(newly.created.var = 5))
newly.created.var
#> [1] 5
rm(newly.created.var)
#> Warning: object 'newly.created.var' not found
```
