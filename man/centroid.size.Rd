\name{centroid.size}
\alias{centroid.size}
\title{Centroid size}
\description{Calculate cetroid size from a configuration 
or a sample of configurations.
}
\usage{centroid.size(x)}
\arguments{
\item{x}{For a single configuration  k x m matrix or complex k-vector

      For a sample of configurations k x m x n array or k x n complex matrix
}
}
\value{
Centroid size(s)
}
\references{
Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. 
}
\examples{
data(mice)
centroid.size(mice$x[,,1])
}
\author{Ian Dryden}
\keyword{multivariate}

