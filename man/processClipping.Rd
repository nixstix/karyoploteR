% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{processClipping}
\alias{processClipping}
\title{processClipping}
\usage{
processClipping(karyoplot, clipping, data.panel)
}
\arguments{
\item{karyoplot}{(KaryoPlot) A KaryoPlot object representing the current plot}

\item{clipping}{(logical) Wheter clipping should be activated or not}

\item{data.panel}{(data panel identifier) The name of the data panel on which the plot should be allowed. Anything plotted outside it will be hidden (if clipping==TRUE and the plot is a zoom plot)}
}
\value{
Returns the original karyoplot object, unchanged.
}
\description{
Sets image clipping if needed
}
\details{
Small utility function to help manage clipping. If the current plot is
a zoomed plot and clipping is TRUE, activate the clip to the current 
data.panel. This will hide any plotting ocurring out of the data.panel
region.
}
\note{
Users wont usually use this function. It is used by the plotting functions 
to set the clipping if needed
}
\examples{

kp <- plotKaryotype()
processClipping(kp, TRUE, 1)

 
}
