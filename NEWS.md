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
