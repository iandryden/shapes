\name{bookstein2d}
\alias{bookstein2d}
\title{Bookstein's baseline registration for 2D data}
\description{Carries out Bookstein's baseline registration and calculates a mean shape}
\usage{bookstein2d(A,l1=1,l2=2)}
\arguments{
\item{A}{a k x 2 x n real array, or k x n complex matrix, where  k is
the number of landmarks, n is the number of observations}
\item{l1}{l1: an integer : l1 is sent to (-1/2,0) in the registration}
\item{l2}{l2: an integer : l2 is sent to (1/2,0) in the registration}
}
\value{A list with components:
\item{k}{number of landmarks}
\item{n}{sample size}
\item{mshape}{Bookstein mean shape with baseline l1, l2}
\item{bshpv}{the k x n x 2 array of Bookstein shape variables, including the baseline}
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. Chapter 2.

Bookstein, F. L. (1986) Size and shape spaces for landmark data in
two dimensions  (with discussion). Statistical Science, 1:181-242.
}
\author{Ian Dryden}

\examples{
     data(gorf.dat)
     data(gorm.dat)

     bookf<-bookstein2d(gorf.dat)
     bookm<-bookstein2d(gorm.dat)

     plotshapes(bookf$mshape,bookm$mshape,joinline=c(1,6,7,8,2,3,4,5,1))
}

\keyword{multivariate}
