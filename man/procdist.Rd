\name{procdist}
\alias{procdist}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Procrustes distance} 
\description{Calculates different types of Procrustes shape or size-and-shape distance between two
 configurations}   
\usage{
procdist(x, y,type="full",reflect=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{k x m matrix  (or complex k-vector  for 2D data) 
where k = number of landmarks and m = no of dimensions} 
 \item{y}{k x m matrix  (or complex k-vector  for 2D data)} 
 \item{type}{string indicating the type of distance; 
          "full" full Procrustes distance, 
          "partial" partial Procrustes distance, 
          "Riemannian" Riemannian shape distance, 
          "sizeandshape" size-and-shape Riemannian/Procrustes distance}
 \item{reflect}{ Logical. If reflect = TRUE then reflection invariance is included.}
}
\value{
  The distance between the two configurations.}
\references{
Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester.
}
\seealso{procOPA,procGPA}
\examples{
data(gorf.dat)
data(gorm.dat)
gorf<-procGPA(gorf.dat)
gorm<-procGPA(gorm.dat)
distfull<-procdist(gorf$mshape,gorm$mshape)
cat("Full Procustes distance between mean shapes is ",distfull," \n")
}

\author{Ian Dryden}        
\keyword{multivariate}% __ONLY ONE__ keyword per line
