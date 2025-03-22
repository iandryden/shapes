\name{T1mice}
\alias{T1mice}
\title{T1 mouse vertabrae data}
\description{T1 mouse vertebrae data - 4 landmarks 
in 2 dimensions, in 3 groups (30 Control, 26 Large, 29 Small mice). The 4 landmarks 
are obtained using a semi-automatic method at points of high curvature. This particular strain of mice is 
the `QE' strain.   
}
\usage{data(T1mice)}
\format{
mice$x  : An array of dimension 4 x 2 x 85 of the two dimensional co-ordinates 
          of 4 landmarks for each of the 85 mice.

mice$group  :  Group labels. "c" Control, "l" Large, "s" Small mice

}
\source{
Dryden, I.L. and Mardia, K.V. (1996). 
Statistical Shape Analysis with Applications in R, 2nd Edition, Wiley, Chichester. 
}
\references{
Mardia, K. V. and Dryden, I. L. (1989). The statistical analysis of shape data. Biometrika, 76, 271-281.

Data from Paul O'Higgins (Hull-York Medical School) and David Johnson (Leeds)
}
\examples{
data(T1mice)
plotshapes(T1mice$x,symbol=as.character(T1mice$group),joinline=c(1,4,2,3,1))
}
\keyword{datasets}

