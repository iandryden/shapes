\name{shapepca}
\alias{shapepca}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Principal components analysis for shape}
\description{
Provides graphical summaries of principal components for shape.
}
\usage{
shapepca(proc, pcno = c(1, 2, 3), type = "r", mag = 1, joinline = c(1, 1), 
           project=c(1,2),scores3d=FALSE,color=2,axes3=FALSE,rglopen=TRUE,zslice=0)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{proc}{List given by the output from \code{procGPA()} }
  \item{pcno}{A vector of the PCs to be plotted}
  \item{type}{Options for the types of plot for the $m=2$ planar case:
   "r" : rows along PCs evaluated at c = -3,0,3 sd's along PC,
  "v" : vectors drawn from mean to +3 sd's along PC,
  "s" : plots along c= -3, -2, -1, 0, 1, 2, 3 superimposed,
  "m" : movie backward and forwards from -3 to +3 sd's along PC,
  "g" : TPS grid from mean to +3 sd's along PC.

 }
  \item{mag}{Magnification of the effect of the PC (scalar multiple of sd's)}
  \item{joinline}{A vector stating which landmarks are joined up by lines,
  e.g. joinline=c(1:n,1) will start at landmark 1, join to 2, ..., join to n, then
  re-join to landmark 1.}
  \item{project}{The default orthogonal projections if in higher than 2 dimensions}
  \item{scores3d}{Logical. If TRUE then a 3D scatterplot of the first 3 raw PC scores with 
labels in `pcno' is given, instead 
of the default plot of the mean and PC vectors.}
  \item{color}{Color of the spheres used in plotting. Default color = 2 (red). 
If a vector is given then the points are colored in that order.}
  \item{axes3}{Logical. If TRUE then the axes are plotted in a 3D plot.}
  \item{rglopen}{Logical. If TRUE open a new RGL window, otherwise plot in current window.}
  \item{zslice}{For 3D case, type = "g": the z co-ordinate(s) for the grid slice(s)}
}
\details{The mean and PCs are plotted. 
}

\value{
 No value is returned
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. Chapter 7.}
\author{Ian Dryden}

\seealso{procGPA}

\examples{
#2d example
data(gorf.dat)
data(gorm.dat)

gorf<-procGPA(gorf.dat)
gorm<-procGPA(gorm.dat)
shapepca(gorf,type="r",mag=3)
shapepca(gorf,type="v",mag=3)
shapepca(gorm,type="r",mag=3)
shapepca(gorm,type="v",mag=3)

#3D example
#data(macm.dat)
#out<-procGPA(macm.dat)
#movie
#shapepca(out,pcno=1)
}
\keyword{hplot}
\keyword{multivariate}
