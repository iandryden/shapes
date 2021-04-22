\name{procOPA}
\alias{procOPA}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Ordinary Procrustes analysis} 
\description{
Ordinary Procustes analysis : the matching of one configuration to  
another using translation, rotation and (possibly) scale. Reflections 
can also be included if desired. The function matches configuration B 
onto A by least squares.}                      
\usage{
procOPA(A, B, scale = TRUE, reflect = FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{A}{k x m matrix (or complex k-vector for 2D data), of 
k landmarks in m dimensions. This is the reference figure.} 
  \item{B}{k x m matrix (or complex k-vector for 2D data). This is 
the figure which is to be transformed.} 
  \item{scale}{logical indicating if scaling is required} 
  \item{reflect}{logical indicating if reflection is allowed}
}
\value{
A list with components:          
  \item{R}{The estimated rotation matrix (may be an orthogonal matrix 
if reflection is allowed)} 
  \item{s}{The estimated scale matrix}   
  \item{Ahat}{The centred configuration A}
  \item{Bhat}{The Procrustes registered configuration B}
  \item{OSS}{The ordinary Procrustes sum of squares, which is 
$\|Ahat-Bhat\|^2$}
  \item{rmsd}{rmsd = sqrt(OSS/(km))}
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. Chapter 7.} 
\author{Ian Dryden}             
\seealso{procGPA,riemdist,tpsgrid}
\examples{
data(digit3.dat)

A<-digit3.dat[,,1]
B<-digit3.dat[,,2]
ans<-procOPA(A,B) 
plotshapes(A,B,joinline=1:13)
plotshapes(ans$Ahat,ans$Bhat,joinline=1:13)

#Sooty Mangabey data
data(sooty.dat)
A<-sooty.dat[,,1]   #juvenile
B<-sooty.dat[,,2]   #adult
par(mfrow=c(1,3))
par(pty="s")
plot(A,xlim=c(-2000,3000),ylim=c(-2000,3000),xlab=" ",ylab=" ")
lines(A[c(1:12,1),])
points(B)
lines(B[c(1:12,1),],lty=2)
title("Juvenile (-------) Adult (- - - -)")
#match B onto A
out<-procOPA(A,B)
#rotation angle
print(atan2(out$R[1,2],out$R[1,1])*180/pi)
#scale
print(out$s)
plot(A,xlim=c(-2000,3000),ylim=c(-2000,3000),xlab=" ",ylab=" ")
lines(A[c(1:12,1),])
points(out$Bhat)
lines(out$Bhat[c(1:12,1),],lty=2)
title("Match adult onto juvenile")
#match A onto B
out<-procOPA(B,A)
#rotation angle
print(atan2(out$R[1,2],out$R[1,1])*180/pi)
#scale
print(out$s)
plot(B,xlim=c(-2000,3000),ylim=c(-2000,3000),xlab=" ",ylab=" ")
lines(B[c(1:12,1),],lty=2)
points(out$Bhat)
lines(out$Bhat[c(1:12,1),])
title("Match juvenile onto adult")
}
\keyword{multivariate}
