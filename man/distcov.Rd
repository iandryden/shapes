\name{distcov}
\alias{distcov}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Compute a distance between two covariance matrices}
\description{Compute a distance between two covariance matrices, 
with non-Euclidean options. 
}
\usage{
distcov(S1, S2, method="Riemannian",alpha=1/2) 
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{S1}{Input a covariance matrix (square, symmetric, positive definite)}
  \item{S2}{Input another covariance matrix of the same size }
  \item{method}{The type of distance to be used: 
"Procrustes": Procrustes size-and-shape metric, 
"ProcrustesShape": Procrustes metric with scaling, 
"Riemannian": Riemannian metric, 
"Cholesky": Cholesky based distance, 
"Power: Power Euclidean, with power alpha, 
"Euclidean": Euclidean metric, 
"LogEuclidean": Log-Euclidean metric, 
"RiemannianLe": Another Riemannian metric.}
\item{alpha}{The power to be used in the power Euclidean metric 
}
}
\value{The distance                        
}
\references{Dryden, I.L., Koloydenko, A. and Zhou, D. (2009). Non-Euclidean statistics for covariance matrices,
with applications to diffusion tensor imaging. Annals of Applied Statistics, 3, 1102-1123.}
\author{Ian Dryden}
\seealso{estcov}                                      

\examples{


A <- diag(5)
B <- A + .1*matrix(rnorm(25),5,5) 
S1<-A
S2<- B%*%t(B)

distcov( S1, S2, method="Procrustes")

}


\keyword{multivariate} 


