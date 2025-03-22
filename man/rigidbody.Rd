\name{rigidbody}
\alias{rigidbody}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Rigid body transformations} 
\description{Applies a rigid body transformations to a landmark configuration 
or array}   
\usage{
rigidbody(X,transx=0,transy=0,transz=0,thetax=0,thetay=0,thetaz=0)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{X}{k x m matrix, or k x m x n array 
where k = number of landmarks and m = no of dimensions and n is no of specimens} 
 \item{transx}{negative shift in x-coordinates} 
 \item{transy}{negative shift in y-coordinates} 
 \item{transz}{negative shift in z-coordinates} 
 \item{thetax}{Rotation about x-axis in degrees}
 \item{thetay}{Rotation about y-axis in degrees}
 \item{thetaz}{Rotation about z-axis in degrees}
}
\value{
The transformed coordinates  (X - trans) Rx Ry Rz } 
\examples{
data(gorf.dat)
plotshapes ( rigidbody(gorf.dat , 0, 0, 0, 0, 0, -90 ) )
}

\author{Ian Dryden}        
\keyword{multivariate}% __ONLY ONE__ keyword per line
