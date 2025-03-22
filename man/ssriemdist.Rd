\name{ssriemdist}
\alias{ssriemdist}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Riemannian size-and-shape distance} 
\description{Calculates the Riemannian size-and-shape distance d_S between two
 configurations}   
\usage{
ssriemdist(x, y, reflect=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{k x m matrix  (or complex k-vector  for 2D data) 
where k = number of landmarks and m = no of dimensions} 
 \item{y}{k x m matrix  (or complex k-vector  for 2D data)} 
 \item{reflect}{ Logical. If reflect = TRUE then reflection invariance is included.}
}
\value{
The Riemannian size-and-shape distance d_S between the two configurations. 
(for the Riemannian shape distance use riemdist)
} 
\references{
Le, H.-L. (1995). Mean size-and-shapes and mean shapes: a geometric point of
view. Advances in Applied Probability, 27:44-55.
}
\seealso{procOPA,procGPA,riemdist}
\examples{
data(gorf.dat)
data(gorm.dat)
gorf<-procGPA(gorf.dat,scale=FALSE)
gorm<-procGPA(gorm.dat,scale=FALSE)
ds<-ssriemdist(gorf$mshape,gorm$mshape)
cat("Riemannian size-and-shape distance between mean size-and-shapes is ",ds," \n")
}

\author{Ian Dryden}        
\keyword{multivariate}% __ONLY ONE__ keyword per line
