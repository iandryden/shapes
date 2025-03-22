\name{rats}
\alias{rats}
\title{Rat skulls data}
\description{Rat skulls data, from X rays. 8 landmarks 
in 2 dimensions, 18 individuals observed at 7, 14, 21, 30, 40, 60, 90, 150 days.
}
\usage{data(rats)}
\format{
rats$x: An array of landmark configurations 144 x 2 x 2

rats$no: Individual rat number (note rats 3, 13, 20 missing due to incomplete data)

rats$time observed time in days 
}
\source{
Vilmann's rat data set (Bookstein, 1991,
      Morphometric Tools for Landmark Data: Geometry and Biology, pp. 408-414)
}
\references{
Bookstein, F.L. (1991). Morphometric tools for landmark data: geometry and biology, Cambridge University Press.
}
\examples{
data(rats)
plotshapes(rats$x,col=1:8)
}
\keyword{datasets}

