\name{plot3darcs}
\alias{plot3darcs}
\title{Modes of variation plots for PCA and PNSS}
\description{Modes of variation plots for PCA and PNSS based on 3D views and arcs along a mode.       c * sd : the extent along lower and upper principal arcs. 

The lower principal arc -> 0 -> upper principal arc has a total of 2*nn+1 configurations
with: nn configurations along the negative principal arc to 0; one configuration at the PNS mean; nn configurations along the positive principal arc. 
}
\usage{
plot3darcs(x,pcno=1,c=1,nn=100,boundary.data=TRUE,view.theta=0,view.phi=0,type="pnss")
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{Output from pnss3d}
  \item{pcno}{The number of the PC/PNSS component. The default is 1, the first PC/PNSS} 
  \item{c}{Number of standard deviations along each arc} 
  \item{nn}{In total 2 * nn + 1 configurations: n configurations on arc from negative to 0;            1 configuration at 0; nn configurations from 0 to positive} 
  \item{boundary.data}{Logical for whether to use boundary data or not. }
\item{view.theta}{Viewing angle theta}
\item{view.phi}{Viewing angle phi}
\item{type}{"pnss" principal nested sphere mean and arc, or "pca" Procrustes mean and linear PC.}
}
\value{A list with components
\item{PNSmean}{the PNSS mean}
\item{lu.arc}{the configurations along the arc}
}
\references{
Dryden, I.L., Kim, K., Laughton, C.A. and Le, H. (2019). Principal nested shape space analysis of molecular dynamics data. Annals of Applied Statistics, 13, 2213-2234.

Jung, S., Dryden, I.L. and Marron, J.S. (2012). Analysis of principal nested spheres. Biometrika, 99, 551-568.
}
\author{Kwang-Rae Kim, Ian Dryden}
\seealso{pns, pns4pc, pnss3d}

\examples{
ans <- pnss3d(digit3.dat, sphere.type="BIC", n.pc=5)
#aa <- plot3darcs(ans,c=2,pcno=1)
#bb <- plot3darcs(ans,c=2,pcno=1,type="pca")
}


\keyword{multivariate} 


