\name{sooty}
\alias{sooty}
\title{Sooty mangabey data}
\description{Sooty mangabey data skull data. 12 landmarks 
in 2 dimensions, 2 individuals (juvenile and male adult) followed by 
three individuals, female adult, male adult. The first entries are rotated, translated versions of
the 3rd and 7th figure. 
}
\usage{data(sooty)}
\format{
An array of dimension 12 x 2 x 7
}
\source{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. Chapter 1.
}
\references{
Data from Paul O'Higgins (Hull-York Medical School)
}
\examples{
data(sooty)
plotshapes(sooty,joinline=c(1:12,1))
}
\keyword{datasets}

