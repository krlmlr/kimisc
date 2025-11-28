# Changelog

## kimisc 1.0.1 (2025-11-28)

### Chore

- Remove pryr dependency, hard-deprecate
  [`vswitch()`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md)
  ([\#37](https://github.com/krlmlr/kimisc/issues/37),
  [\#38](https://github.com/krlmlr/kimisc/issues/38)).

### Documentation

- Update
  [`thisfile()`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md)
  deprecation to point to the whereami package
  ([\#10](https://github.com/krlmlr/kimisc/issues/10),
  [\#41](https://github.com/krlmlr/kimisc/issues/41)).

## kimisc 1.0.0 (2024-11-30)

CRAN release: 2024-12-02

### Chore

- Upkeep ([\#14](https://github.com/krlmlr/kimisc/issues/14),
  [\#16](https://github.com/krlmlr/kimisc/issues/16)).

- Relicense as MIT ([\#14](https://github.com/krlmlr/kimisc/issues/14),
  [\#16](https://github.com/krlmlr/kimisc/issues/16)).

## kimisc 0.4 (2017-12-17)

CRAN release: 2017-12-18

- Deprecate functions with better alternatives found elsewhere:
  - [`coalesce.na()`](http://krlmlr.github.io/kimisc/reference/coalesce.na-deprecated.md):
    [`dplyr::coalesce()`](https://dplyr.tidyverse.org/reference/coalesce.html)
  - [`hms.to.seconds()`](http://krlmlr.github.io/kimisc/reference/hms.to.seconds-deprecated.md)
    and
    [`seconds.to.hms()`](http://krlmlr.github.io/kimisc/reference/seconds.to.hms-deprecated.md):
    the hms package
  - `list.to.df()`, `df.to.list()`,
    [`nlist()`](http://krlmlr.github.io/kimisc/reference/nlist-deprecated.md)
    and
    [`nc()`](http://krlmlr.github.io/kimisc/reference/nc-deprecated.md):
    the tibble package
  - [`ofactor()`](http://krlmlr.github.io/kimisc/reference/ofactor-deprecated.md):
    `forcats::fct_inorder()`
  - `sample.data.frame()`:
    [`dplyr::sample_n()`](https://dplyr.tidyverse.org/reference/sample_n.html)
  - [`thisfile()`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md)
    and others: the rprojroot package
  - [`tll()`](http://krlmlr.github.io/kimisc/reference/tll-deprecated.md):
    [`purrr::transpose()`](https://purrr.tidyverse.org/reference/transpose.html)
  - [`vswitch()`](http://krlmlr.github.io/kimisc/reference/vswitch-deprecated.md):
    [`dplyr::recode()`](https://dplyr.tidyverse.org/reference/recode.html)
- Unexported `setMissingNames()`
- Remove call to `test_examples()` in tests
  ([\#12](https://github.com/krlmlr/kimisc/issues/12),
  [@jimhester](https://github.com/jimhester)).

## Version 0.3 (2016-02-12)

CRAN release: 2016-02-14

- New
  [`cut_format()`](http://krlmlr.github.io/kimisc/reference/cut_format.md)
  with ability to tweak label formatting, and more sensible defaults
  ([\#9](https://github.com/krlmlr/kimisc/issues/9)).
  - With examples.
  - Throws an error if `breaks` is an atomic value.
- New
  [`list_to_df()`](http://krlmlr.github.io/kimisc/reference/list_to_df-deprecated.md)
  and
  [`df_to_list()`](http://krlmlr.github.io/kimisc/reference/df_to_list-deprecated.md).
- New vectorized switch function `vswitch`.
- Export all helper functions used by
  [`thisfile()`](http://krlmlr.github.io/kimisc/reference/thisfile-deprecated.md).
- [`gdiff()`](http://krlmlr.github.io/kimisc/reference/gdiff.md) does
  not attempt to maintain class information, the called function is
  supposed to do this.
- [`gdiff()`](http://krlmlr.github.io/kimisc/reference/gdiff.md) accepts
  a factor as input.
- Determine knitr input via
  [`knitr::current_input()`](https://rdrr.io/pkg/knitr/man/current_input.html)
  ([\#6](https://github.com/krlmlr/kimisc/issues/6)).
- Use AppVeyor (checks on Windows), Coveralls (coverage analysis) and
  lintr (static code analysis).
- Fix CRAN checks.

## Version 0.2-1 (2014-04-02)

CRAN release: 2014-04-02

- Function `ofactor` now uses `...` instead of explicit argument list
  (making it compatible to R 2.15.3 and future versions of R), and
  accepts `levels` argument (works like `factor` then)

## Version 0.2 (2014-03-20)

CRAN release: 2014-03-20

- Cleanup for CRAN release

## Version 0.1.7

- New function `thisfile`: Returns a guess for the path of the currently
  executed script

- Removed all dependencies to Rcpp

## Version 0.1.6

- Removed useless Rcpp “Hello World” code

- New function `ofactor`: Creates a factor that maintains the order of
  levels in the data

## Version 0.1.5

- Remove functions `tc` and `tlist`, they’re now part of the sweetnR
  package

- New function `tll`: Transposes a list of lists

## Version 0.1.4

- Added functions:
  - `sample.rows`
  - `hms.to.seconds` and `seconds.to.hms`
  - `in_interval`
  - `nlist`
  - `coalesce.na`
  - `export`
