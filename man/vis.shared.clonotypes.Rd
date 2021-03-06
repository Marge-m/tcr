% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{vis.shared.clonotypes}
\alias{vis.shared.clonotypes}
\title{Visualisation of shared clonotypes occurrences among repertoires.}
\usage{
vis.shared.clonotypes(.shared.rep, .x.rep = NA, .y.rep = NA,
  .title = "Shared clonotypes", .ncol = 3, .point.size.modif = 1)
}
\arguments{
\item{.shared.rep}{Shared repertoires, as from \link{shared.repertoire} function.}

\item{.x.rep}{Which repertoire show on x-axis. Either a name or an index of a repertoire 
in the \code{.shared.rep} or NA to choose all repertoires.}

\item{.title}{Main title of the plot.}

\item{.ncol}{Number of columns in the resulting plot.}

\item{.point.size.modif}{Modify this to correct sizes of points.}

\item{.x.rep}{Which repertoire show on y-axis. Either a name or an index of a repertoire 
in the \code{.shared.rep} or NA to choose all repertoires.}
}
\value{
ggplot2 object or plot
}
\description{
Visualise counts or proportions of shared clonotypes among repertoires.
}
\examples{
\dontrun{
data(twb)
# Show shared nucleotide clonotypes of all possible pairs 
# using the Read.proportion column
twb.sh <- shared.repertoire(twb, "n0rp")
vis.shared.clonotypes(twb.sh, .ncol = 4)

# Show shared amino acid + Vseg clonotypes of pairs 
# including the Subj.A (the first one) using
# the Read.count column.
twb.sh <- shared.repertoire(twb, "avrc")
vis.shared.clonotypes(twb.sh, 1, NA, .ncol = 4)
# same, just another order of axis
vis.shared.clonotypes(twb.sh, NA, 1, .ncol = 4)

# Show shared nucleotide clonotypes of Subj.A (the first one)
# Subj.B (the second one) using the Read.proportion column.
twb.sh <- shared.repertoire(twb, "n0rp")
vis.shared.clonotypes(twb.sh, 1, 2)

# Show the same plot, but with much larget points.
vis.shared.clonotypes(twb.sh, 1, 2, .point.size.modif = 3)
}
}
\seealso{
\link{shared.repertoire}
}

