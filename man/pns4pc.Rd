\name{pns4pc}
\alias{pns4pc}
\title{Principal Nested Shape Spaces from PCA}
\description{Approximation of Principal Nested Shapes Spaces using PCA
}
\usage{
pns4pc(x, sphere.type = "seq.test", alpha = 0.1, R = 100, nlast.small.sphere = 1,n.pc=2)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{k x m x n array of landmark data.}
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
specifies Principal Nested GREAT Sphere for the first part and Principal Nested SMALL Sphere for The default is "seq.test".
} 
  \item{alpha}{significance level (0 < alpha < 1) used when sphere.type = "seq.test". The default is 0.1.
}
\item{R}{the number of bootstrap samples to be evaluated for the sequential test. The default is 100.}
\item{nlast.small.sphere}{the number of small spheres in the finishing part used when 
sphere.type = "bi.sphere".}
\item{n.pc}{the number of PC scores to be used (n.pc >= 2)}
}
\value{A list with components
\item{PNS}{the output of the function pns}
\item{GPAout}{the result of GPA}
\item{spheredata}{transformed spherical data from the PC scores}
\item{percent}{proportion of variances explained.}
}
\references{
Dryden, I.L., Kim, K., Laughton, C.A. and Le, H. (2019). Principal nested shape space analysis of molecular dynamics data. Annals of Applied Statistics, 13, 2213-2234.

Jung, S., Dryden, I.L. and Marron, J.S. (2012). Analysis of principal nested spheres. Biometrika, 99, 551-568.
}
\author{Kwang-Rae Kim}
\seealso{pns, pns4pc, pnss3d, plot3darcs}

\examples{

pns4pc(digit3.dat,n.pc=2)

}


\keyword{multivariate} 


