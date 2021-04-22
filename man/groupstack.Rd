\name{groupstack}
\alias{groupstack}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Combine two or more groups of configurations}
\description{Combine two or more groups of configurations and 
create a group label vector. (Maximum 8 groups).
}
\usage{
groupstack(A1, A2, A3=0, A4=0, A5=0, A6=0, A7=0, A8=0)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{A1}{Input k x m x n real array of the Procrustes 
transformed configurations, 
where k is the number of points, m 
is the number of dimensions, and n is the sample size. }
  \item{A2}{Input k x m x n real array of the Procrustes
original configurations,
where k is the number of points, m
is the number of dimensions, and n is the sample size. }
  \item{A3}{ Optional array}
  \item{A4}{ Optional array}
  \item{A5}{ Optional array}
  \item{A6}{ Optional array}
  \item{A7}{ Optional array}
  \item{A8}{ Optional array}
}
\value{A list with components
\item{x}{The combined array of all configurations}
\item{groups}{The group labels (integers)}                             
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester.}
\author{Ian Dryden}
\seealso{procGPA}                                      

\examples{

#2D example : female and male Gorillas (cf. Dryden and Mardia, 2016)

data(gorf.dat)
data(gorm.dat)

groupstack(gorf.dat,gorm.dat)

}


\keyword{multivariate} 


