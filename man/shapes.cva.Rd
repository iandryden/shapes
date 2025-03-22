\name{shapes.cva}      
\alias{shapes.cva}             
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Canonical variate analysis for shapes} 
\description{Carry out canonical variate analysis for shapes (in two or more groups)    
}
\usage{
shapes.cva(X,groups,scale=TRUE,tangentcoords = "residual",ncv=2)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{X}{Input k x m x n real array of the configurations, 
where k is the number of points, m 
is the number of dimensions, and n is the sample size. }
  \item{groups}{The group labels}      
  \item{scale}{Logical, indicating if Procrustes 
scaling should be carried out}
  \item{tangentcoords}{The type of Procrustes tangent coordinates to use (as for procGPA)}
 \item{ncv}{Number of canonical variates to display}
}
\value{A plot if ncv=2 or 3 and the Canonical Variate Scores} 
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester.}
\author{Ian Dryden}
\seealso{procGPA}                                      

\examples{

#2D example : female and male apes   (cf. Dryden and Mardia, 2016)

data(pongof.dat)
data(pongom.dat) 
data(panm.dat)
data(panf.dat)

apes   <- groupstack( pongof.dat , pongom.dat , panm.dat, panf.dat )

shapes.cva( apes$x, apes$groups) 
}


\keyword{multivariate} 


