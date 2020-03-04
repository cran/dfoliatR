% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats.R
\name{defol_stats}
\alias{defol_stats}
\title{Descriptive statistics for defoliation trees}
\usage{
defol_stats(x)
}
\arguments{
\item{x}{A defol object after running \code{\link[=defoliate_trees]{defoliate_trees()}}.}
}
\value{
A data frame containing tree/series-level statistics.
}
\description{
Descriptive statistics for defoliation trees
}
\examples{
data("dmj_defol")
head(defol_stats(dmj_defol))

}