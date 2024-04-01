\name{backfit}
\alias{backfit}
\title{Backfit from scores to configuration}
\description{Backfit from PNSS or PCA scores to a representative configuration
}
\usage{
backfit(scores, x, type="pnss", size=1) 
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{scores}{n x p matrix of scores}
  \item{x}{
  An object that is the output of either pnss3d (if type="pnss") or procGPA (if type="pca")
} 
  \item{type}{ 
  Either "pnss" for PNSS or "pca" for PCA 
  }
  \item{size}{
  The centroid size of the backfitted configuration. The default is 1 but one can rescale the backfitting if desired. 
}
}
\value{A k x m matrix of co-ordinates of the backfitted configuration
}
\references{
Dryden, I.L., Kim, K., Laughton, C.A. and Le, H. (2019). Principal nested shape 
space analysis of molecular dynamics data. Annals of Applied Statistics, 13, 2213-2234.

Jung, S., Dryden, I.L. and Marron, J.S. (2012). Analysis of principal nested spheres. 
Biometrika, 99, 551-568.
}
\author{Ian Dryden}
\seealso{pns, pns4pc, plot3darcs}

\examples{
ans <- pnss3d( macf.dat, sphere.type="BIC", n.pc=8)
y <- backfit( ans$PNS$scores[1,] , ans ,type="pnss")
riemdist( macf.dat[,,1] , y )  #should be close to zero

ans2 <- procGPA( macf.dat, tangentcoords="partial")
y <- backfit( ans2$scores[1,] , ans2 ,type="pca")
riemdist( macf.dat[,,1] , y )  #should be close to zero
}


\keyword{multivariate} 


