\name{pns}
\alias{pns}
\title{Principal Nested Spheres}
\description{Calculation of Principal Nested Spheres
}
\usage{
pns(x, sphere.type = "seq.test", alpha = 0.1, R = 100, 
                              nlast.small.sphere = 1, output=TRUE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{a (d + 1) x n data matrix where each column is a unit vector in S^d and n is the sample size.
}
  \item{sphere.type}{
  a character string specifying the type of sphere fitting method.
"seq.test"
specifies sequential tests to decide either "small" or "great";
"small"
specifies Principal Nested SMALL Sphere;
"great"
specifies Principal Nested GREAT Sphere (radius pi/2);
"BIC"
specifies BIC statistic to decide either "small" or "great"; and
"bi.sphere"
specifies Principal Nested GREAT Sphere for the first part and Principal Nested SMALL Sphere for last parts. The default is "seq.test".
} 
  \item{alpha}{significance level (0 < alpha < 1) used when sphere.type = "seq.test". The default is 0.1.
}
\item{R}{the number of bootstrap samples to be evaluated for the sequential test. The default is 100.}
\item{nlast.small.sphere}{the number of small spheres in the finishing part used when 
sphere.type = "bi.sphere".}
\item{output}{Logical. If TRUE then plots and some brief printed summaries are given. If FALSE then no plots or output is given.} 
}
\value{A list with components
\item{resmat}{the residual matrix (X_PNS). Each entry in row k works like the kth principal component} 
\item{$PNS}{= the list with the following components.}
\item{radii}{the size (radius) of PNS.}
\item{orthaxis}{the orthogonal axis v_i of subspheres.}
\item{dist}{the distance r_i of subspheres}
\item{pvalues}{the p-values of LRT and parametric boostrap tests (if any).}
\item{ratio}{the estimated ratios. Now unavailable.}
\item{mean}{the location of the PNS mean.}
\item{sphere.type}{the type of method for fitting subspheres.}
\item{percent}{proportion of variances explained.}
\item{spherePNS}{The co-ordinates of the data points projected to the sphere in 3D (also plotted)}
\item{circlePNS}{The co-ordinates of the 2D circle projections on the sphere in 3D (also plotted)}
}
\references{
Dryden, I.L., Kim, K., Laughton, C.A. and Le, H. (2019). Principal nested shape space analysis of molecular dynamics data. Annals of Applied Statistics, 13, 2213-2234.

Jung, S., Dryden, I.L. and Marron, J.S. (2012). Analysis of principal nested spheres. Biometrika, 99, 551-568.
}
\author{Kwang-Rae Kim: R translation of Sungkyu Jung's matlab code}
\seealso{pns4pc, pnss3d}

\examples{

#  out <- pc2sphere(x = gorf.dat, n.pc = 2)
#  spheredata <- t(out$spheredata)
#  pns.out <- pns(x = spheredata)

}


\keyword{multivariate} 


