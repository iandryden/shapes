\name{brains}
\alias{brains}
\title{Brain landmark data}
\description{24 landmarks located in 58 adult healthy brains}
\usage{data(brains)}
\format{A list with components: 

brains$x  :  An array of dimension 24 x 3 x 58  containing the landmarks in 3D

brains$sex : Sex of each volunteer (m or f)

brains$age : Age of each volunteer

brains$handed : Handedness of each volunteer (r or l)

brains$grp : group label: 1= right-handed males, 2=left-handed males, 3=right-handed females, 
4=left-handed females
}
\references{
Free, S.L., O'Higgins, P., Maudgil, D.D., Dryden, I.L., Lemieux, L., Fish, D.R. and Shorvon, S.D. (2001). Landmark-based morphometrics of the normal adult brain using MRI.  Neuroimage  ,  13  , 801--813.
}
\examples{
data(brains)
# plot first three brains
shapes3d(brains$x[,,1:3])
}
\keyword{datasets}

