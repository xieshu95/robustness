% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_ml.R
\name{calc_ml}
\alias{calc_ml}
\title{Calculate maximum likelihood value for the rates}
\usage{
calc_ml(sim)
}
\arguments{
\item{sim}{A list of simulation output from
\code{\link{DAISIE_sim_constant_rate}()},
\code{\link{DAISIE_sim_time_dependent}()} or
\code{\link{DAISIE_sim_constant_rate_shift}()}}
}
\value{
Output from \code{\link[DAISIE]{DAISIE_ML_CS}}
}
\description{
Calculate maximum likelihood value for the rates
}
\author{
Joshua Lambert, Pedro Neves
}
