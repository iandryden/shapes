\name{mice}
\alias{mice}
\title{T2 mouse vertabrae data}
\description{T2 mouse vertebrae data - 6 landmarks 
in 2 dimensions, in 3 groups (30 Control, 23 Large, 23 Small mice). The 6 landmarks 
are obtained using a semi-automatic method at points of high curvature. This particular strain of mice is 
the `QE' strain.  In addition pseudo-landmarks are given around each outlines. 
}
\usage{data(mice)}
\format{
mice$x  : An array of dimension 6 x 2 x 76 of the two dimensional co-ordinates 
          of 6 landmarks for each of the 76 mice.

mice$group  :  Group labels. "c" Control, "l" Large, "s" Small mice

mice$outlines : An array of dimension 60 x 2 x 76 containing the 6 landmarks and 
54 pseudo-landmarks, with 9 pseudo-landmarks approximately equally spaced between 
each pair of landmarks.
}
\source{
Dryden, I.L. and Mardia, K.V. (1998). 
Statistical Shape Analysis, Wiley, Chichester. p313
}
\references{
Mardia, K. V. and Dryden, I. L. (1989). The statistical analysis of shape data. Biometrika, 76, 271-281.

Data from Paul O'Higgins (Hull-York Medical School) and David Johnson (Leeds)
}
\examples{
data(mice)
plotshapes(mice$x,symbol=as.character(mice$group),joinline=c(1,6,2:5,1))
}
\keyword{datasets}

