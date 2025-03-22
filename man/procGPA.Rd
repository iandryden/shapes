\name{procGPA}
\alias{procGPA}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Generalised Procrustes analysis}
\description{Generalised Procrustes analysis to register landmark configurations into optimal registration using translation, 
rotation and scaling. Reflection invariance can also be chosen, and registration without scaling is also an option. Also, obtains principal 
components, and some summary statistics. 
}
\usage{
procGPA(x, scale = TRUE, reflect = FALSE, eigen2d = FALSE, 
tol1 = 1e-05, tol2 = tol1, tangentcoords = "residual", proc.output=FALSE, 
distances=TRUE, pcaoutput=TRUE, alpha=0, affine=FALSE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{Input k x m x n real array, (or k x n complex 
matrix for m=2 is OK), where k is the number of points, m 
is the number of dimensions, and n is the sample size. }
  \item{scale}{Logical quantity indicating if scaling is required}
  \item{reflect}{Logical quantity indicating if reflection 
  is required}
  \item{eigen2d}{Logical quantity indicating if complex eigenanalysis 
  should be used to calculate Procrustes mean for the particular 2D case when 
  scale=TRUE, reflect=FALSE} 
   \item{tol1}{Tolerance for optimal rotation for the iterative 
algorithm: tolerance on the mean sum of squares 
(divided by size of mean squared) between successive iterations}
  \item{tol2}{tolerance for rescale/rotation step for the iterative 
algorithm: tolerance on the mean sum of squares 
(divided by size of mean squared) between successive iterations}
\item{tangentcoords}{Type of tangent coordinates. If (SCALE=TRUE) 
the options are "residual" (Procrustes residuals, which are approximate 
tangent coordinates to shape space), "partial" (Kent's partial tangent 
co-ordinates), "expomap" (tangent coordinates from the inverse of the 
exponential map, which are the similar to "partial" but scaled by 
(rho/sin(rho)) where rho is the Riemannian distance to the pole of
the projection. If (SCALE=FALSE) then all three options give the
same tangent co-ordinates to size-and-shape space, which is simply the 
Procrustes residual X^P - mu. }
\item{proc.output}{Logical quantity indicating if printed output during the
iterations of the Procrustes GPA algorithm should be given} 
\item{distances}{Logical quantity indicating if shape distances and sizes 
should be calculated}
\item{pcaoutput}{Logical quantity indicating if PCA should be carried out} 
\item{alpha}{The parameter alpha used for relative warps analysis, where alpha 
is the power of the bending energy matrix. 
If alpha = 0 then standard Procrustes PCA is carried out. If alpha = 1 then large scale variations 
are emphasized, if alpha = -1 then small scale variations are emphasised. 
Requires m=2 and m=3 dimensional data if alpha $!=$ 0.}
\item{affine}{Logical. If TRUE then only the affine subspace of shape variability is 
considered.} 
}
\value{A list with components
\item{k}{no of landmarks}
\item{m}{no of dimensions (m-D dimension configurations)}
\item{n}{sample size}
\item{mshape}{Procrustes mean shape. Note this is unit size if complex 
eigenanalysis used, but on the scale of the data if iterative GPA is used.} 
\item{tan}{The tangent shape (or size-and-shape) coordinates}
\item{rotated}{the k x m x n array of full Procrustes 
rotated data} 
\item{pcar}{the columns are eigenvectors (PCs) of the sample 
covariance Sv of tan} 
\item{pcasd}{the square roots of eigenvalues of Sv using tan (s.d.'s of PCs)}
\item{percent}{the percentage of variability explained by the PCs using
tan. If alpha $!=0$ then it is the percent of non-affine variation of the relative warp scores. 
If affine is TRUE it is the percentage of total shape variability of each affine 
component.}
\item{size}{the centroid sizes of the configurations}
\item{stdscores}{standardised PC scores (each with unit variance) using 
tan} 
\item{rawscores}{raw PC scores using tan} 
\item{rho}{Kendall's Riemannian shape distance rho to the mean shape}
\item{rmsrho}{root mean square (r.m.s.) of rho} 
\item{rmsd1}{r.m.s. of full Procrustes distances to the mean shape $d_F$}
\item{GSS}{Minimized Procrustes sum of squares}
}
\references{Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. Chapter 7.
 
Goodall, C.R. (1991). Procrustes methods in the statistical analysis 
of shape (with discussion). Journal of the Royal Statistical Society, 
Series B, 53: 285-339. 

Gower, J.C. (1975). Generalized Procrustes analysis, Psychometrika, 40, 33--50. 

Kent, J.T. (1994). The complex Bingham distribution and shape analysis,
Journal of the Royal Statistical Society, Series B, 56, 285-299.

Ten Berge, J.M.F. (1977). Orthogonal Procrustes rotation for two or more 
matrices. Psychometrika, 42, 267-276. }
\author{Ian Dryden, with input from Mohammad Faghihi and Alfred Kume}
\seealso{procOPA,riemdist,shapepca,testmeanshapes}

\examples{

#2D example : female and male Gorillas (cf. Dryden and Mardia, 2016)

data(gorf.dat)
data(gorm.dat)

plotshapes(gorf.dat,gorm.dat)
n1<-dim(gorf.dat)[3]
n2<-dim(gorm.dat)[3]
k<-dim(gorf.dat)[1]
m<-dim(gorf.dat)[2]
gor.dat<-array(0,c(k,2,n1+n2))
gor.dat[,,1:n1]<-gorf.dat
gor.dat[,,(n1+1):(n1+n2)]<-gorm.dat

gor<-procGPA(gor.dat)
shapepca(gor,type="r",mag=3)
shapepca(gor,type="v",mag=3)

gor.gp<-c(rep("f",times=30),rep("m",times=29))
x<-cbind(gor$size,gor$rho,gor$scores[,1:3])
pairs(x,panel=function(x,y) text(x,y,gor.gp),
   label=c("s","rho","score 1","score 2","score 3"))


##########################################################
#3D example

data(macm.dat)
out<-procGPA(macm.dat,scale=FALSE)

par(mfrow=c(2,2))
plot(out$rawscores[,1],out$rawscores[,2],xlab="PC1",ylab="PC2")
title("PC scores")
plot(out$rawscores[,2],out$rawscores[,3],xlab="PC2",ylab="PC3")
plot(out$rawscores[,1],out$rawscores[,3],xlab="PC1",ylab="PC3")
plot(out$size,out$rho,xlab="size",ylab="rho")
title("Size versus shape distance")

}


\keyword{multivariate} 


