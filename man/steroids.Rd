\name{steroids}
\alias{steroids}
\title{Steroid data}
\description{Steroid data. Between 42 and 61 atoms for each of 31 steroid molecules. 
}
\usage{data(steroids)}
\format{
steroids$x : An array of dimension 61 x 3 x 31 of 3D co-ordinates of the 31 steroids. 
             If a molecules has less than 61 atoms then the remaining co-ordinates are all zero.  
                      

steroids$activity : Activity class (`1' = high, `2' = intermediate, and `3' = low 
                         binding affinities to the corticosteroid
                         binding globulin (CBG) receptor)

steroids$radius : van der Waals radius (0 = missing value)

steoirds$atom : atom type (0 = missing value)

steroids$charge : partial charge (0 = missing value)

steroids$names : steroid names

}
\source{
This particular version of the steroids data set of (x, y, z) atom co-ordinates and partial charges was constructed by 
Jonathan Hirst and James Melville (School of Chemistry, University of Nottingham). 

Also see Wagener, M., Sadowski, J., Gasteiger, J. (1995).
J. Am. Chem. Soc., 117, 7769-7775.

http://www2.ccc.uni-erlangen.de/services/steroids/

}
\references{
Dryden, I.L., Hirst, J.D. and Melville, J.L. (2007). Statistical analysis of unlabelled point sets: comparing molecules in chemoinformatics.
Biometrics, 63, 237-251.

Czogiel I., Dryden, I.L. and Brignell, C.J. (2011). Bayesian matching of unlabeled point sets using
random fields, with an application to molecular alignment. Annals of Applied Statistics, 5, 2603-2629.
}
\examples{
data(steroids)
shapes3d(steroids$x[,,1])
}
\keyword{datasets}

