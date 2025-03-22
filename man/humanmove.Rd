\name{humanmove}
\alias{humanmove}
\title{Human movement data}
\description{Human movement data. 4 landmarks 
in 2 dimensions, 5 individuals observed at 10 times. 
}
\usage{data(humanmove)}
\format{
humanmove: An array of landmark configurations 4 x 2 x 10 x 5
}
\source{
Alshabani, A. K. S. and Dryden, I. L. and Litton, C. D. and
              Richardson, J. (2007).
Bayesian analysis of human movement curves, 
 J. Roy. Statist. Soc. Ser. C, 56, 415--428. 
}
\references{
Data from James Richardson.
}
\examples{
data(humanmove)
#plotshapes(humanmove[,,,1])
#for (i in 2:5){
#for (j in 1:4){
#for (k in 1:10){
#points(humanmove[j,,k,i],col=i)
#}
#}
#}
}
\keyword{datasets}

