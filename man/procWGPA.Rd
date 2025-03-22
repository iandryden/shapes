\name{procWGPA}
\alias{procWGPA}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Weighted Procrustes analysis}
\description{Weighted Procrustes analysis to register landmark configurations into optimal registration using translation, 
rotation and scaling. Registration without scaling is also an option. Also, obtains principal 
components, and some summary statistics. 
}
\usage{
procWGPA(x, fixcovmatrix=FALSE, initial="Identity", maxiterations=10, scale=TRUE,
 reflect=FALSE, prior="Exponential",diagonal=TRUE,sampleweights="Equal")
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{Input k x m x n real array, where k is the number of points, m 
is the number of dimensions, and n is the sample size. }
 \item{fixcovmatrix}{If FALSE then the landmark covariance 
matrix is estimated. If a fixed covariance matrix is desired then 
the value should be given here, e.g. fixcovmatrix=diag(8) for the identity matrix
with 8 landmarks.} 
\item{initial}{The initial value of the estimated covariance matrix. 
"Identity" - identity matrix, "Rawdata" - based on sample variance of the 
raw landmarks. Also, could be a k x k symmetric positive definite matrix.}
\item{maxiterations}{The maximum number of iterations for estimating 
the covariance matrix},
  \item{scale}{Logical quantity indicating if scaling is required},
   \item{reflect}{Logical quantity indicating if reflection invariance is
   required}, 
\item{prior}{Indicates the type of prior. "Exponential" is exponential 
for the inverse eigenvalues. "Identity" is an inverse Wishart with 
the identity matrix as parameters.}
\item{diagonal}{Logical. Indicates if the diagonal of the landmark 
covariance matrix (only) should be used. Diagonal matrices can lead to 
some landmarks having very small variability, which may or may not be desirable.}
\item{sampleweights}{Gives the weights of the observations in the sample, 
rather than the landmarks. This is a fixed quatity. "Equal" indicates
that all observations in the sample have equal weight. The weights
do not need to sum to 1.
}
}
\value{A list with components
\item{k}{no of landmarks}
\item{m}{no of dimensions (m-D dimension configurations)}
\item{n}{sample size}
\item{mshape}{Weighted Procrustes mean shape.} 
\item{tan}{This is the mk x n matrix of 
Procrustes residuals $X_i^P$ - Xbar.}
\item{rotated}{the k x m x n array of weighted Procrustes 
rotated data} 
\item{pcar}{the columns are eigenvectors (PCs) of the sample 
covariance Sv of tan} 
\item{pcasd}{the square roots of eigenvalues of Sv using tan (s.d.'s of PCs)}
\item{percent}{the percentage of variability explained by the PCs using
tan. }
\item{size}{the centroid sizes of the configurations}
\item{scores}{standardised PC scores (each with unit variance) using 
tan} 
\item{rawscores}{raw PC scores using tan} 
\item{rho}{Kendall's Riemannian distance rho to the mean shape}
\item{rmsrho}{r.m.s. of rho} 
\item{rmsd1}{r.m.s. of full Procrustes distances to the mean shape $d_F$}
\item{Sigmak}{Estimate of the sample covariance matrix of the landmarks}
}
\details{The factored covariance model is assumed:
$Sigma_k x I_m$ with 
$Sigma_k$ being the covariance matrix of the landmarks, and the
cov matrix at each landmark is the identity matrix.}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. 
 
Goodall, C.R. (1991). Procrustes methods in the statistical analysis 
of shape (with discussion). Journal of the Royal Statistical Society, 
Series B, 53: 285-339. 

}
\author{Ian Dryden}
\seealso{procGPA}

\examples{

#2D example : female Gorillas (cf. Dryden and Mardia, 2016)

data(gorf.dat)

gor<-procWGPA(gorf.dat,maxiterations=3)

}


\keyword{multivariate} 


