\name{shells}
\alias{shells}
\title{Microfossil shell data}
\description{Microfossil shell data. Triangles from 21 individuals. 
Lohmann (1983) published 21 mean outlines of the microfossil which were 
based on random samples of organisms taken at different 
latitudes in the South Indian Ocean.
}
\usage{data(shells)}
\format{
shells$uv    Scaled shape coordinates (Bookstein shape co-ordinates 
               with base (0,0) and (1,0). 
shells$size  Centroid size 
}
\source{
Bookstein, F. L. (1986). Size and shape spaces for landmark data in two dimensions (with discussion).
Statistical Science, 1:181-242.

Lohmann, G. P. (1983). Eigenshape analysis of microfossils: a general morphometric procedure for
describing changes in shape. Mathematical Geology, 15:659-672.

}
\references{
The data have been extracted from Fig. 7 of Bookstein (1986). 
}
\examples{
data(shells)
plotshapes(shells$uv)
}
\keyword{datasets}

