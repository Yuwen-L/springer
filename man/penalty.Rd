% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/penalty.R
\name{penalty}
\alias{penalty}
\title{This function provides the penalty functions.  Users can choose one of the three penalties: sparse group MCP, group MCP and MCP.}
\usage{
penalty(x, n, t, p, q, beta, lam1, structure, p1, lam2)
}
\arguments{
\item{x}{the matrix of predictors, consisting of the clinical covariates, environmental factors, genetic factors and gene-environment interactions.}

\item{n}{the sample size.}

\item{t}{the number of clinical covariates.}

\item{p}{the number of predictors, which consists of the clinical covariates, environmental factors, genetic factors and gene-environment interactions.}

\item{q}{the number of environment factors.}

\item{beta}{the coefficient vector.}

\item{lam1}{the tuning parameter \eqn{\lambda_1} for individual-level penalty.}

\item{structure}{Three choices are available for structured variable selection. "bilevel" for sparse-group selection on both group-level and individual-level. "group" for selection on group-level only. "individual" for selection on individual-level only.}

\item{p1}{the number of genetic factors.}

\item{lam2}{the tuning parameter \eqn{\lambda_2} for group-level penalty.}
}
\value{
\item{H}{the penalty function.}
}
\description{
This function provides the penalty functions.  Users can choose one of the three penalties: sparse group MCP, group MCP and MCP.
}
\details{
When {structure="bilevel"}, sparse group MCP is adopted and variable selection for longitudinal data including both genetic main effects and gene-environment interactions will be conducted on both individual and group levels (bi-level selection):
\itemize{
\item \strong{Group-level selection:} If the \eqn{v}th genetic factor has any effect at all (associated with the response or not) can be determined by whether \eqn{||\eta_{v}||_{2}=0}.
\item \strong{Individual-level selection:} whether the \eqn{v}th genetic variant has main effect, G\eqn{\times}E interaction or both can be determined by the nonzero componet.
}
If structure="group", group MCP will be used and only group-level selection will be conducted on \eqn{||\eta_{v}||_{2}}; if structure="individual", MCP will be adopted and only individual-level selection will be conducted on each \eqn{\eta_{vu}}, (\eqn{u=1,\ldots,q}).

The minimax concave penalty (MCP) is adopted as the baseline penalty function in the springer package. Methods based on other popular choices, such as SCAD and LASSO, will be examined in the future.
}
