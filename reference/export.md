# Exports to an environment

This function is a wrapper around
[`export.list()`](http://krlmlr.github.io/kimisc/reference/export.list.md)
that exports variables by their name to another environment.

## Usage

``` r
export(..., target.env = .GlobalEnv)
```

## Arguments

- ...:

  variables to be exported.

- target.env:

  The target environment. Use the global environment by default.

## Value

Invisible `NULL`.

## References

<https://stackoverflow.com/a/17484932/946850>

## See also

[`export.list()`](http://krlmlr.github.io/kimisc/reference/export.list.md),
[`assign()`](https://rdrr.io/r/base/assign.html)

## Author

Roland

## Examples

``` r
local({
  newly.created.var <- 5
  export(newly.created.var)
})
newly.created.var
#> [1] 5
rm(newly.created.var)
#> Warning: object 'newly.created.var' not found
```
