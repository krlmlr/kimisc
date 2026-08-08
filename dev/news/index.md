# Changelog

## kimisc 1.0.1.9017 (2026-08-06)

### Continuous integration

- Add sharded `revdep2` workflow.

### Uncategorized

- Ci: Harden `workflow_run` workflows against untrusted pull requests
  ([\#106](https://github.com/krlmlr/kimisc/issues/106)).

- Ci: Pin third-party actions to commits and let Renovate keep them
  pinned ([\#105](https://github.com/krlmlr/kimisc/issues/105)).

## kimisc 1.0.1.9016 (2026-08-05)

### Chore

- Auto-update from GitHub Actions
  ([\#77](https://github.com/krlmlr/kimisc/issues/77)).

### Continuous integration

- Remove unused pr-commands workflow.

### Uncategorized

- Ci: Give every workflow and job an explicit `permissions` block
  ([\#103](https://github.com/krlmlr/kimisc/issues/103)).

- Ci: Pass workflow context through the environment, not into script
  text ([\#102](https://github.com/krlmlr/kimisc/issues/102)).

- Ci: Add a Windows arm64 (`windows-11-arm`) check on R-release
  ([\#99](https://github.com/krlmlr/kimisc/issues/99)).

## kimisc 1.0.1.9015 (2026-07-28)

- Ci: Run all smoke-test checks even when one fails
  ([\#97](https://github.com/krlmlr/kimisc/issues/97)).

- Ci: Apply matrix `env` vars in the workflow, not in custom actions
  ([\#95](https://github.com/krlmlr/kimisc/issues/95)).

- Ci: Link the responsible workflow run in snapshot update PRs
  ([\#96](https://github.com/krlmlr/kimisc/issues/96)).

## kimisc 1.0.1.9014 (2026-07-25)

### Continuous integration

- Lock down `format-suggest` egress (audit → block).

## kimisc 1.0.1.9013 (2026-07-24)

### Bug fixes

#### ci

- Emit empty package matrix when there are no (rev)deps.

### Uncategorized

- Ci: Harden `format-suggest` against `pull_request_target` pwn requests
  ([\#93](https://github.com/krlmlr/kimisc/issues/93)).

## kimisc 1.0.1.9012 (2026-07-22)

### Continuous integration

- Run on Ubuntu 26.04.

- Align workflows with template.

## kimisc 1.0.1.9011 (2026-07-22)

### Testing

- Replace deprecated `.Label` with `levels` in
  [`cut_format()`](http://krlmlr.github.io/kimisc/dev/reference/cut_format.md)
  tests ([\#71](https://github.com/krlmlr/kimisc/issues/71)).

## kimisc 1.0.1.9010 (2026-07-02)

### Chore

- Auto-update from GitHub Actions
  ([\#69](https://github.com/krlmlr/kimisc/issues/69)).

## kimisc 1.0.1.9009 (2026-05-24)

### Continuous integration

- Update ccache-action reference.

- Bump action version.

## kimisc 1.0.1.9008 (2026-05-16)

- Ci: Unify fledge.yaml across cynkratemplate and fledge
  ([\#86](https://github.com/krlmlr/kimisc/issues/86)).

## kimisc 1.0.1.9007 (2026-05-14)

### Chore

- Add ccache to `.gitignore` and `.Rbuildignore`.

### Continuous integration

- Create snapshot update PR against correct branch.

- Add reference to `/apply-patch` workflow in commit message.

- Clarify rationale for not deploying on schedule.

- Only run fledge on pushes to main.

- Tweak fledge workflow and ccache action.

## kimisc 1.0.1.9006 (2026-05-06)

### Continuous integration

- Cosmetics.

- Bump action versions.

- Install clang-format-21.

- Align fledge workflow.

- Harmonize.

## kimisc 1.0.1.9005 (2026-05-04)

### Chore

- Auto-update from GitHub Actions
  ([\#58](https://github.com/krlmlr/kimisc/issues/58)).

## kimisc 1.0.1.9004 (2026-03-12)

### Chore

- Auto-update from GitHub Actions
  ([\#56](https://github.com/krlmlr/kimisc/issues/56)).

## kimisc 1.0.1.9003 (2026-03-08)

### Chore

- Auto-update from GitHub Actions
  ([\#54](https://github.com/krlmlr/kimisc/issues/54)).

## kimisc 1.0.1.9002 (2026-03-07)

### Chore

- Auto-update from GitHub Actions
  ([\#52](https://github.com/krlmlr/kimisc/issues/52)).

## kimisc 1.0.1.9001 (2026-01-14)

### Continuous integration

- Fix comment ([\#50](https://github.com/krlmlr/kimisc/issues/50)).

- Tweaks ([\#49](https://github.com/krlmlr/kimisc/issues/49)).

- Test all R versions on branches that start with cran-
  ([\#48](https://github.com/krlmlr/kimisc/issues/48)).

## kimisc 1.0.1.9000 (2025-11-29)

### fledge

- CRAN release v1.0.1
  ([\#46](https://github.com/krlmlr/kimisc/issues/46)).

## kimisc 1.0.1 (2025-11-28)

CRAN release: 2025-11-29

### Chore

- Remove pryr dependency, hard-deprecate
  [`vswitch()`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md)
  ([\#37](https://github.com/krlmlr/kimisc/issues/37),
  [\#38](https://github.com/krlmlr/kimisc/issues/38)).

### Documentation

- Update
  [`thisfile()`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md)
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
  - [`coalesce.na()`](http://krlmlr.github.io/kimisc/dev/reference/coalesce.na-deprecated.md):
    [`dplyr::coalesce()`](https://dplyr.tidyverse.org/reference/coalesce.html)
  - [`hms.to.seconds()`](http://krlmlr.github.io/kimisc/dev/reference/hms.to.seconds-deprecated.md)
    and
    [`seconds.to.hms()`](http://krlmlr.github.io/kimisc/dev/reference/seconds.to.hms-deprecated.md):
    the hms package
  - `list.to.df()`, `df.to.list()`,
    [`nlist()`](http://krlmlr.github.io/kimisc/dev/reference/nlist-deprecated.md)
    and
    [`nc()`](http://krlmlr.github.io/kimisc/dev/reference/nc-deprecated.md):
    the tibble package
  - [`ofactor()`](http://krlmlr.github.io/kimisc/dev/reference/ofactor-deprecated.md):
    `forcats::fct_inorder()`
  - `sample.data.frame()`:
    [`dplyr::sample_n()`](https://dplyr.tidyverse.org/reference/sample_n.html)
  - [`thisfile()`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md)
    and others: the rprojroot package
  - [`tll()`](http://krlmlr.github.io/kimisc/dev/reference/tll-deprecated.md):
    [`purrr::transpose()`](https://purrr.tidyverse.org/reference/transpose.html)
  - [`vswitch()`](http://krlmlr.github.io/kimisc/dev/reference/vswitch-deprecated.md):
    [`dplyr::recode()`](https://dplyr.tidyverse.org/reference/recode.html)
- Unexported `setMissingNames()`
- Remove call to `test_examples()` in tests
  ([\#12](https://github.com/krlmlr/kimisc/issues/12),
  [@jimhester](https://github.com/jimhester)).

## Version 0.3 (2016-02-12)

CRAN release: 2016-02-14

- New
  [`cut_format()`](http://krlmlr.github.io/kimisc/dev/reference/cut_format.md)
  with ability to tweak label formatting, and more sensible defaults
  ([\#9](https://github.com/krlmlr/kimisc/issues/9)).
  - With examples.
  - Throws an error if `breaks` is an atomic value.
- New
  [`list_to_df()`](http://krlmlr.github.io/kimisc/dev/reference/list_to_df-deprecated.md)
  and
  [`df_to_list()`](http://krlmlr.github.io/kimisc/dev/reference/df_to_list-deprecated.md).
- New vectorized switch function `vswitch`.
- Export all helper functions used by
  [`thisfile()`](http://krlmlr.github.io/kimisc/dev/reference/thisfile-deprecated.md).
- [`gdiff()`](http://krlmlr.github.io/kimisc/dev/reference/gdiff.md)
  does not attempt to maintain class information, the called function is
  supposed to do this.
- [`gdiff()`](http://krlmlr.github.io/kimisc/dev/reference/gdiff.md)
  accepts a factor as input.
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
