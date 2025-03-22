\name{sand}
\alias{sand}
\title{Sand particle outline data}
\description{50 points on 24 sea sand and 25 river sand grain profiles in 2D. The original 
data were kindly provided by Professor Dietrich Stoyan (Stoyan and Stoyan, 1994; Stoyan, 1997). 
The 50 points on each outline were extracted at approximately equal arc-lengths by the method 
described in Kent et al. (2000, section 8.1)}
\usage{data(sand)}
\format{A list with components: 

sea$x  :  An array of dimension 50 x 2 x 49  containing the 50 point co-ordinates in 2D for each grain

sea$group : The types of the sand grains: "sea", 24 particles from the Baltic Sea

                                           "river", 25 particles from the Caucasian River Selenchuk

}
\references{
Kent, J. T., Dryden, I. L. and Anderson, C. R. (2000). Using circulant symmetry to model featureless
objects. Biometrika, 87, 527--544.

Stoyan, D. (1997). Geometrical means, medians and variances for samples of particles. Particle Particle Syst. Charact. 14, 30--34.

Stoyan, D. and Stoyan, H. (1994).  Fractals, Random Shapes and Point Fields: Methods of Geometric Statistics, John Wiley, Chichester. 
}

\examples{
data(sand)
plotshapes(sand$x[,,sand$group=="sea"],sand$x[,,sand$group=="river"],joinline=c(1:50))
}
\keyword{datasets}

