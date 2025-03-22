\name{apes}
\alias{apes}
\title{Great ape data}
\description{Great ape skull landmark data. 8 landmarks 
in 2 dimensions, 167 individuals
}
\usage{data(apes)}
\format{
apes$x :  An array of dimension 8 x 2 x 167

apes$group :  Species and sex of each specimen: 
             "gorf" 30 female gorillas,
             "gorm" 29 male gorillas,
             "panf" 26 female chimpanzees,
             "pamm" 28 male chimpanzees,
             "pongof" 24 female orang utans,
             "pongom" 30 male orang utans.
}
\source{
Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. 

O'Higgins, P. and Dryden, I. L. (1993). Sexual dimorphism in
hominoids: further studies of craniofacial shape differences in
Pan, Gorilla, Pongo, Journal of Human Evolution, 24, 183-205.
}
\references{

Data from Paul O'Higgins (Hull-York Medical School)
}
\examples{
data(apes)
par(mfrow=c(1,2))
plotshapes(apes$x[,,apes$group=="gorf"],symbol="f")
plotshapes(apes$x[,,apes$group=="gorm"],symbol="m")
}
\keyword{datasets}

