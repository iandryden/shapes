\name{digit3.dat}
\alias{digit3.dat}
\title{Digit 3 data}
\description{Handwritten digit `3' data. 13 landmarks 
in 2 dimensions, 30 individuals
}
\usage{data(digit3.dat)}
\format{
An array of dimension 13 x 2 x 30
}
\source{
Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. Chapter 1.
}
\references{
http://www.maths.nott.ac.uk/personal/ild/bookdata/digit3.dat

Data from Cath Anderson
}
\examples{
data(digit3.dat)
k<-dim(digit3.dat)[1]
n<-dim(digit3.dat)[3]
plotshapes(digit3.dat,joinline=c(1:13))
}
\keyword{datasets}

