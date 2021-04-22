\name{tpsgrid}
\alias{tpsgrid}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Thin-plate spline transformation grids}
\description{Thin-plate spline transformation grids from one set of landmarks 
to another. 
}
\usage{
tpsgrid(TT, YY, xbegin=-999, ybegin=-999, xwidth=-999, opt=1, ext=0.1, ngrid=22, 
                  cex=1, pch=20, col=2,zslice=0, mag=1, axes3=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{TT}{First object (source): (k x m matrix)}
  \item{YY}{Second object (target): (k x m matrix)}
  \item{xbegin}{lowest x value for plot: if -999 then a value is determined}
  \item{ybegin}{lowest y value for plot: if -999 then a value is determined }
  \item{xwidth}{width of plot: if -999 then a value is determined}
  \item{opt}{Option 1: (just deformed grid on YY is displayed), 
  option 2: both grids are displayed}
  \item{ext}{Amount of border on plot in 2D case.}
  \item{ngrid}{Number of grid points: size is ngrid * (ngrid -1)}
  \item{cex}{Point size}
  \item{pch}{Point symbol}
  \item{col}{Point colour}
  \item{zslice}{For 3D case the scaled z co-ordinate(s) for the grid slice(s). The 
values are on a standardized scale as a proportion of height from the middle of 
the z-axis to the top and bottom. Values in the range -1 to 1 would be sensible.}
  \item{mag}{Exaggerate effect (mag > 1). Standard effect has mag=1.}
  \item{axes3}{Logical. If TRUE then the axes are plotted in a 3D plot.}
}
\details{
A square grid on the first configuration is deformed smoothly using a pair of 
thin-plate splines in 2D, or a triple of splines in 3D, to a curved grid on 
the second object. For 3D data the grid is placed at a constant z-value on the 
first figuure, indicated by the value of zslice. 

For 2D data the covariance function in the thin-plate spline is 
$sigma(h) = |h|^2 log |h|^2$ and in 3D it is given by $sigma(h) =  -| h |$. 
}
\value{
No returned value
}
\references{
Bookstein, F.L. (1989). Principal  warps: thin-plate
       splines and  the decomposition  of  deformations,
       IEEE Transactions on Pattern Analysis and Machine Intelligence,
   11, 567--585. 

Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. Chapter 12.
}
\author{Ian Dryden}

\seealso{procGPA}

\examples{
data(gorf.dat)
data(gorm.dat)

#TPS grid with shape change exaggerated (2x)
gorf<-procGPA(gorf.dat)
gorm<-procGPA(gorm.dat)
TT<-gorf$mshape
YY<-gorm$mshape
tpsgrid(TT,YY,mag=2) 
title("TPS grid: Female mean (left) to Male mean (right)")   

}
\keyword{multivariate}% at least one, from doc/KEYWORDS
\keyword{hplot}
