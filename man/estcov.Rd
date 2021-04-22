\name{estcov}
\alias{estcov}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Weighted Frechet mean of covariance matrices}       
\description{Computes the weighted Frechet means of an array of covariance 
matrices, with different options for the covariance metric. Also carries 
out principal co-ordinate analysis of the covariance matrices} 
\usage{
estcov(S , method="Riemannian",weights=1,alpha=1/2,MDSk=2) 
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{S}{Input an array of covariance matrices of size k x k x n 
where each matrix is square, symmetric and positive definite}
   \item{method}{The type of distance to be used: 
"Procrustes": Procrustes size-and-shape metric, 
"ProcrustesShape": Procrustes metric with scaling, 
"Riemannian": Riemannian metric, 
"Cholesky": Cholesky based distance, 
"Power: Power Euclidean, with power alpha, 
"Euclidean": Euclidean metric, 
"LogEuclidean": Log-Euclidean metric, 
"RiemannianLe": Another Riemannian metric. }
  \item{weights}{The weights to be used for calculating the mean. 
If weights=1 then equal weights are used, otherwise the vector 
must be of length n.}
  \item{alpha}{The power to be used in the power Euclidean metric}
  \item{MDSk}{The number of MDS components in the principal co-ordinate analysis}
}
\value{A list with values
  \item{mean}{The weighted mean covariance matrix}
  \item{sd}{The weighted standard deviation}
  \item{pco}{Principal co-ordinates (from multidimensional scaling with the metric)}
  \item{eig}{The eigenvalues from the principal co-ordinate analysis}                  
}
\references{Dryden, I.L., Koloydenko, A. and Zhou, D. (2009). Non-Euclidean statistics for covariance matrices,
with applications to diffusion tensor imaging. Annals of Applied Statistics, 3, 1102-1123.}
\author{Ian Dryden}
\seealso{distcov}                                     

\examples{

S <- array(0,c(5,5,10) )
for (i in 1:10){
tem <- diag(5)+.1*matrix(rnorm(25),5,5)
S[,,i]<- tem%*%t(tem)
}

estcov( S , method="Procrustes")

}



\keyword{multivariate} 


