# Convert Numeric to Factor, with custom formatting

This is an enhanced version of
[`base::cut()`](https://rdrr.io/r/base/cut.html) that allows a custom
formatting to be applied to the values.

## Usage

``` r
cut_format(
  x,
  breaks,
  include.lowest = FALSE,
  right = TRUE,
  ordered_result = FALSE,
  ...,
  format_fun = format,
  sep = ", ",
  paren = c("(", "[", ")", "]")
)
```

## Arguments

- x:

  a numeric vector which is to be converted to a factor by cutting.

- breaks:

  `[numeric]`  
  A vector of two or more unique cut points

- include.lowest:

  logical, indicating if an ‘x\[i\]’ equal to the lowest (or highest,
  for `right = FALSE`) ‘breaks’ value should be included.

- right:

  logical, indicating if the intervals should be closed on the right
  (and open on the left) or vice versa.

- ordered_result:

  logical: should the result be an ordered factor?

- ...:

  Passed to [`cut()`](https://rdrr.io/r/base/cut.html)

- format_fun:

  `[function(x): character]`  
  A vectorized function that performs the desired formatting. Default:
  [`base::format()`](https://rdrr.io/r/base/format.html)

- sep:

  `[character(1)]`  
  The separator between lower and upper end of the interval. Default:
  `", "`

- paren:

  `[character(4)]`  
  Opening and closing parentheses in two variants. Default:
  `c("(", "[", ")", "]")`

## See also

<https://stackoverflow.com/q/14456371/946850>

## Examples

``` r
cut_format(runif(10), seq(0, 1, by = 0.25), format_fun = function(x) paste(x * 100, "%"))
#>  [1] (0 %, 25 %]   (25 %, 50 %]  (25 %, 50 %]  (25 %, 50 %]  (50 %, 75 %] 
#>  [6] (75 %, 100 %] (75 %, 100 %] (0 %, 25 %]   (0 %, 25 %]   (25 %, 50 %] 
#> Levels: (0 %, 25 %] (25 %, 50 %] (50 %, 75 %] (75 %, 100 %]
cut_format(runif(10), seq(0, 1, by = 0.25), paren = c("<", "{", ">", "}"))
#>  [1] <0.25, 0.50} <0.00, 0.25} <0.25, 0.50} <0.00, 0.25} <0.25, 0.50}
#>  [6] <0.75, 1.00} <0.25, 0.50} <0.50, 0.75} <0.50, 0.75} <0.00, 0.25}
#> Levels: <0.00, 0.25} <0.25, 0.50} <0.50, 0.75} <0.75, 1.00}
```
