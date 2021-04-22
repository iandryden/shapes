\name{shapes3d}
\alias{shapes3d}
\title{Plot 3D data}
\description{Plot the landmark configurations from a 3D dataset}
\usage{shapes3d(x,loop=0,type="p", color = 2, joinline=c(1:1), axes3=FALSE, rglopen=TRUE)}
\arguments{
\item{x}{An array of size k x 3 x n, where k is the number of landmarks
and n is the number of observations}
\item{loop}{gives the number of times an animated loop through the observations is
displayed (in order 1 to n). loop > 0 is suitable when a time-series of shapes
is available. loop = 0 gives a plot of all the observations on the same figure.
}
\item{type}{Type of plot: "p" points, "dots" dots (quicker for large plots), "l" dots and  
lines though landmarks 1:k if `joinline' not stated}
\item{color}{Colour of points (default color = 2 (red)). If a vector is given then the points 
are coloured in that order.}
\item{joinline}{Join the numbered landmarks by lines}
\item{axes3}{Logical. If TRUE then plot the axes.}
\item{rglopen}{Logical. If TRUE then open a new RGL window, if FALSE then plot in current window.}
}
\value{
None
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. 

}
\author{Ian Dryden}

\examples{
data(dna.dat)
shapes3d(dna.dat)
}

\keyword{multivariate}
