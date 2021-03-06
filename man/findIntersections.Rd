% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{findIntersections}
\alias{findIntersections}
\title{findIntersections}
\usage{
findIntersections(data, thr)
}
\arguments{
\item{data}{(GRanges with y mcol) A GRanges with the data points}

\item{thr}{(numeric) The value at wich we want to calculate the intersections}
}
\value{
A GRanges representing the intersection points between the data line and the threshold.
It will return an empty GRanges if the line does not intersect the threshold.
}
\description{
Finds the intersections of a data line with a given threshold
}
\details{
Given a GRanges with an mcol with name "y" representing the values. This function
will return a GRanges with the points intersecting a specific value "thr".
}
\note{
Important: It will only return the intersection points where the line crosses
 the threshold but not if a data point lies exactly at the threshold.
}
\examples{

d <- toGRanges(c("1:1-1", "1:5-5", "1:15-15"))
d$y <- c(-2, 3, 1)
 
findIntersections(d, 1.5)  
findIntersections(d, 0)  
findIntersections(d, 5)  

}
