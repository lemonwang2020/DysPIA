% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DysPIA.R
\name{calcDyspiaStat}
\alias{calcDyspiaStat}
\title{calcDyspiaStat: Calculates DysPIA statistics}
\usage{
calcDyspiaStat(
  stats,
  selectedStats,
  DyspiaParam = 1,
  returnAllExtremes = FALSE,
  returnLeadingEdge = FALSE
)
}
\arguments{
\item{stats}{Named numeric vector with gene pair-level statistics sorted in decreasing order (order is not checked).}

\item{selectedStats}{Indexes of selected gene pairs in the `stats` array.}

\item{DyspiaParam}{DysPIA weight parameter (0 is unweighted, suggested value is 1).}

\item{returnAllExtremes}{If TRUE return not only the most extreme point, but all of them. Can be used for enrichment plot.}

\item{returnLeadingEdge}{If TRUE return also leading edge gene pairs.}
}
\value{
Value of DysPIA statistic if both returnAllExtremes and returnLeadingEdge are FALSE.
Otherwise returns list with the folowing elements:
\itemize{
\item res -- value of DysPIA statistic
\item tops -- vector of top peak values of cumulative enrichment statistic for each gene pair;
\item bottoms -- vector of bottom peak values of cumulative enrichment statistic for each gene pair;
\item leadingEdge -- vector with indexes of leading edge gene pairs that drive the enrichment.
}
}
\description{
Calculates DysPIA statistics for a given query gene pair set.
}
