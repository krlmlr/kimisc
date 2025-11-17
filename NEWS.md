<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# kimisc 1.0.0.9003 (2025-11-17)

## Continuous integration

- Install binaries from r-universe for dev workflow (#44).


# kimisc 1.0.0.9002 (2025-11-12)

## Chore

- Remove pryr dependency, hard-deprecate `vswitch()` (#37, #38).

## Continuous integration

- Fix reviewdog and add commenting workflow (#42).

## Documentation

- Update `thisfile()` deprecation to point to the whereami package (#10, #41).


# kimisc 1.0.0.9001 (2025-11-10)

## Chore

- Auto-update from GitHub Actions (#32).

## Continuous integration

- Use workflows for fledge (#35).

- Sync (#34).

- Use reviewdog for external PRs (#33).

- Cleanup and fix macOS (#31).

- Format with air, check detritus, better handling of `extra-packages` (#30).

- Enhance permissions for workflow (#29).

- Permissions, better tests for missing suggests, lints (#28).

- Only fail covr builds if token is given (#27).

- Always use `_R_CHECK_FORCE_SUGGESTS_=false` (#26).

- Correct installation of xml2 (#25).

- Explain (#24).

- Add xml2 for covr, print testthat results (#23).

- Sync (#22).


# kimisc 1.0.0.9000 (2024-12-09)

## Continuous integration

- Avoid failure in fledge workflow if no changes (#20).

- Sync with base (#19).


# kimisc 1.0.0 (2024-11-30)

## Chore

- Upkeep (#14, #16).

- Relicense as MIT (#14, #16).


kimisc 0.4 (2017-12-17)
===

- Deprecate functions with better alternatives found elsewhere:
    - `coalesce.na()`: `dplyr::coalesce()`
    - `hms.to.seconds()` and `seconds.to.hms()`: the hms package
    - `list.to.df()`, `df.to.list()`, `nlist()` and `nc()`: the tibble package
    - `ofactor()`: `forcats::fct_inorder()`
    - `sample.data.frame()`: `dplyr::sample_n()`
    - `thisfile()` and others: the rprojroot package
    - `tll()`: `purrr::transpose()`
    - `vswitch()`: `dplyr::recode()`
- Unexported `setMissingNames()`
- Remove call to `test_examples()` in tests (#12, @jimhester).


Version 0.3 (2016-02-12)
===

- New `cut_format()` with ability to tweak label formatting, and more sensible defaults (#9).
    - With examples.
    - Throws an error if `breaks` is an atomic value.
- New `list_to_df()` and `df_to_list()`.
- New vectorized switch function `vswitch`.
- Export all helper functions used by `thisfile()`.
- `gdiff()` does not attempt to maintain class information, the called function is supposed to do this.
- `gdiff()` accepts a factor as input.
- Determine knitr input via `knitr::current_input()` (#6).
- Use AppVeyor (checks on Windows), Coveralls (coverage analysis) and lintr (static code analysis).
- Fix CRAN checks.


Version 0.2-1 (2014-04-02)
===

- Function `ofactor` now uses `...` instead of explicit argument list (making it
  compatible to R 2.15.3 and future versions of R), and accepts `levels`
  argument (works like `factor` then)

Version 0.2 (2014-03-20)
===

- Cleanup for CRAN release

Version 0.1.7
===

- New function `thisfile`: Returns a guess for the path of the currently
  executed script

- Removed all dependencies to Rcpp

Version 0.1.6
===

- Removed useless Rcpp "Hello World" code

- New function `ofactor`: Creates a factor that maintains the order of levels
  in the data

Version 0.1.5
===

- Remove functions `tc` and `tlist`, they're now part of the sweetnR package

- New function `tll`: Transposes a list of lists

Version 0.1.4
===

- Added functions:
    - `sample.rows`
    - `hms.to.seconds` and `seconds.to.hms`
    - `in_interval`
    - `nlist`
    - `coalesce.na`
    - `export`
