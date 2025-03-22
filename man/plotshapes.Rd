\name{plotshapes}
\alias{plotshapes}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Plot configurations}            
\description{
Plots configurations. Either one or two groups of observations
can be plotted on the same scale. 
}
\usage{
plotshapes(A, B = 0, joinline = c(1, 1),orthproj=c(1,2),color=1,symbol=1)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{A}{k x m x n array, or k x m matrix for first group} 
  \item{B}{k x m x n array, or k x m matrix for 2nd group (can be missing)}
  \item{joinline}{A vector stating which landmarks are joined up by lines,
  e.g. joinline=c(1:n,1) will start at landmark 1, join to 2, ..., join to n, 
  then re-join to landmark 1.}
  \item{orthproj}{A vector stating which two orthogonal projections will be
  used. For example, for m=3 dimensional data: X-Y projection given by c(1,2) 
  (default), X-Z projection given by c(1,3), Y-Z projection given by c(2,3).}
  \item{color}{Colours for points. Can be a vector, e.g. 1:k gives each landmark
  a different colour for the specimens}
  \item{symbol}{Plotting symbols. Can be a vector, e.g. 1:k gives each landmark
  a different symbol for the specimens}
} 
\value{
Just graphical output
}
\author{Ian Dryden}            
\seealso{shapepca,tpsgrid}
\examples{
data(gorf.dat)
data(gorm.dat)
plotshapes(gorf.dat,gorm.dat,joinline=c(1,6,7,8,2,3,4,5,1))

data(macm.dat)
data(macf.dat)
plotshapes(macm.dat,macf.dat)
}
\keyword{hplot}
\keyword{multivariate}
