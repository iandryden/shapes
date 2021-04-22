\name{macaques}
\alias{macaques}
\title{Male and Female macaque data}
\description{Male and female macaque skull data. 7 landmarks 
in 3 dimensions, 18 individuals (9 males, 9 females)
}
\usage{data(macaques)}
\format{
macaques$x : An array of dimension 7 x 3 x 18

macaques$group : A factor indicating the sex (`m' for male and `f' for female)
}
\source{
Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. Chapter 1.
}
\references{
Dryden, I. L. and Mardia, K. V. (1993). Multivariate shape analysis. Sankhya Series A, 55, 460-480.

Data from Paul O'Higgins (Hull-York Medical School)
}
\examples{
data(macaques)
shapes3d(macaques$x[,,1])
}
\keyword{datasets}

