\name{schizophrenia}
\alias{schizophrenia}
\title{Bookstein's schizophrenia data}
\description{Bookstein's schizophrenia data. 13 landmarks
in 2 dimensions, 28 individuals.
The first 14 individuals are controls. The last fourteen cases
were diagnosed with schizophrenia.
        The landmarks were taken in the near midline from MR images of the brain:
 (1) splenium, posteriormost point on corpus callosum; (2) genu,
 anteriormost point on corpus callosum; (3) top of corpus callosum,
 uppermost point on arch of callosum (all three to an
 approximate registration on the diameter of the callosum);
 (4) top of head, a point relaxed from a standard landmark
 along the apparent margin of the dura; (5) tentorium of
 cerebellum at dura; (6) top of cerebellum; (7) tip of
 fourth ventricle; (8) bottom of cerebellum;
 (9) top of pons, anterior margin; (10) bottom of pons,
 anterior margin; (11) optic chiasm; (12) frontal pole,
 extension of a line from landmark 1 through  landmark 2 until it
 intersects the dura; (13) superior colliculus.
}
\usage{data(schizophrenia.dat)}
\format{
schizophrenia$x : An array of dimension 13 x 2 x 28

schizophrenia$group : A factor of group labels `con' for Controls and `scz' for 
                      the schizophrenia patients. 
}
\source{
Bookstein, F. L. (1996). Biometrics, biomathematics and the morphometric synthesis,
Bulletin of Mathematical Biology, 58, 313--365.
}
\references{
Data kindly provided by Fred Bookstein (University of Washington and University of Vienna)
}
\examples{
data(schizophrenia)
plotshapes(schizophrenia$x,symbol=as.integer(schizophrenia$group))
}
\keyword{datasets}

