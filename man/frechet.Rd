\name{frechet}
\alias{frechet}
\title{Mean shape estimators}
\description{Calculation of different types of Frechet mean
shapes, or the isotropic offset Gaussian MLE mean shape
}
\usage{
frechet(x, mean="intrinsic")
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{Input k x m x n real array, where k is the number of points, m 
is the number of dimensions, and n is the sample size. }
  \item{mean}{Type of mean shape. The Frechet mean shape is obtained 
by minimizing sum d(x_i,mu)^2 with respect to mu. Different estimators 
are obtained with different choices of distance d.  
"intrinsic" intrinsic mean shape (d = rho = Riemannian distance);
"partial.procrustes" partial Procrustes (d = 2*sin(rho/2));
"full.procrustes" full Procrustes (d = sin(rho));
h (positive real number) M-estimator (d^2 = (1 - cos^(2h)(rho))/h) Kent (1992);  
"mle" - isotropic offset Gaussian MLE of Mardia and Dryden (1989)  
} 
}
\value{A list with components
\item{mshape}{Mean shape estimate} 
\item{var}{Minimized Frechet variance (not available for MLE)}
\item{kappa}{(if available) The estimated kappa for the MLE} 
\item{code}{Code from optimization, as given by function nlm - should be 1 or 2}
\item{gradient}{Gradient from the optimization, as given by function nlm - should be close to zero}
}
\references{
Dryden, I. L. (1991). Discussion to `Procrustes methods in the statistical analysis
of shape' by C.R. Goodall. Journal of the Royal Statistical Society, Series B,
53:327-328.

Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. 

Kent, J. T. (1992). New directions in shape analysis. In Mardia, K. V., editor, The
Art of Statistical Science, pages 115-127. Wiley, Chichester. 


Mardia, K. V. and Dryden, I. L. (1989b). The statistical analysis of shape data.
Biometrika, 76:271-282.
}
\author{Ian Dryden}
\seealso{procGPA}

\examples{

#2D example : female and male Gorillas (cf. Dryden and Mardia, 2016)

data(gorf.dat)
frechet(gorf.dat[,,1:4],mean="intrinsic")

}


\keyword{multivariate} 


