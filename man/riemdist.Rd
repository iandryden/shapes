\name{riemdist}
\alias{riemdist}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Riemannian shape distance} 
\description{Calculates the Riemannian shape distance rho between two
 configurations}   
\usage{
riemdist(x, y, reflect=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{k x m matrix  (or complex k-vector  for 2D data) 
where k = number of landmarks and m = no of dimensions} 
 \item{y}{k x m matrix  (or complex k-vector  for 2D data)} 
 \item{reflect}{ Logical. If reflect = TRUE then reflection invariance is included.}
}
\value{
  The Riemannian shape distance rho between the two configurations. 
Note 0 <= rho <= pi/2 if no reflection invariance. 
(for the Riemannian size-and-shape distance use ssriemdist)} 
\references{
   Kendall, D. G. (1984). 
   Shape manifolds,  Procrustean metrics and complex
       projective spaces, 
   Bulletin of the  London Mathematical Society, 
   16,
   81-121. 
}
\seealso{procOPA,procGPA}
\examples{
data(gorf.dat)
data(gorm.dat)
gorf<-procGPA(gorf.dat)
gorm<-procGPA(gorm.dat)
rho<-riemdist(gorf$mshape,gorm$mshape)
cat("Riemannian distance between mean shapes is ",rho," \n")
}

\author{Ian Dryden}        
\keyword{multivariate}% __ONLY ONE__ keyword per line
