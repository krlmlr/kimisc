#' @title Weighted sampling without replacement using 
#'   repeated weighted sampling with replacement
#' @description \code{sample.int.rej} takes a sample of the specified 
#'   \code{size} from the elements of \code{1:n} without replacement. 
#'   This function is faster than \code{sample.int} in many cases, 
#'   especially when \code{n} and \code{size} are large.
#' @inheritParams base::sample.int
#' @return An integer vector of length \code{size} with elements from 
#'   \code{1:n}.
#' @details The call \code{sample.int.rej(n, size, prob)} is equivalent 
#'   to \code{sample.int(n, size, replace=F, prob)}.  (The results will 
#'   most probably be different for the same random seed, but the 
#'   returned samples are distributed identically for both calls.) 
#'   However, \code{sample.int} implements an algorithm with quadratic 
#'   runtime -- this is not suitable for large values of \code{n} and 
#'   \code{size} (see also 
#'   \url{http://stackoverflow.com/q/15113650/946850}). Note that the 
#'   performance of \code{sample.int} is just fine in the "with 
#'   replacement" case, and also for uniform probabilities.
#'   
#'   This function simulates weighted sampling without replacement using
#'   somewhat more draws \emph{with} replacement, and then discarding 
#'   duplicate values (rejection sampling).  If too few items are 
#'   sampled, the routine calls itself recursively on a (hopefully) much
#'   smaller problem.  See also 
#'   \url{http://stats.stackexchange.com/q/20590/6432}.
#' @author Kirill Müller
#' @seealso \link[base]{sample.int}
#' @examples
#' s <- sample.int.rej(200000, 100000, runif(200000))
#' stopifnot(unique(s) == s)
sample.int.rej <- function(n, size, prob)
  .sample.int.rej(n, size, prob, 2, 1)

.harmonic.series <- NULL
.harmonic.series.max <- 50

# Euler-Mascheroni constant
.EM = 0.57721566490153286060651209008240243104215933593992

#' Computes the harmonic series. Exact for the first
#' .harmonic.series.max values (through table lookup), otherwise using
#' the approximation ln(a) + \gamma + 1 / (2a). Source: 
#' http://en.wikipedia.org/wiki/Harmonic_number
.harmonic <- function(a) {
  stopifnot(a >= 0)
  if (a <= .harmonic.series.max) {
    if (length(.harmonic.series) != .harmonic.series.max + 1)
      .harmonic.series <- c(0, cumsum(1 / (1:.harmonic.series.max)))
    .harmonic.series[a + 1]
  } else {
    log(a) + .EM + .5 / a
  }
}

.sample.int.rej <- function(
  n, size, prob, MAX_OVERSHOOT, BIAS) {
  
  require(logging)
  logdebug('.sample.int.rej: parameters: %s, %s, %s', n, size, length(prob))
  
  if (size == 0)
    return (integer(0))
  wr.size <- ceiling(n * min(BIAS * (.harmonic(n) - .harmonic(n - size)),
                             MAX_OVERSHOOT))
  logdebug('.sample.int.rej: wr.size=%s', wr.size)
  wr.sample <- sample.int(n, size=wr.size, replace=T, prob)
  wr.sample <- unique(wr.sample)
  wr.sample.len <- length(wr.sample)
  
  rem.size <- size - wr.sample.len
  if (rem.size <= 0)
    return (head(wr.sample, size))
  
  rem.indexes <- (1:n)[-wr.sample]
  rem.n <- length(rem.indexes)
  stopifnot(rem.n == n - wr.sample.len)
  rem.sample <- .sample.int.rej(rem.n, rem.size,
                                prob[rem.indexes],
                                MAX_OVERSHOOT, BIAS)
  c(wr.sample, rem.indexes[rem.sample])
}
