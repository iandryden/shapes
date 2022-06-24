1.2.7

New backfit function for backfitting from PNSS or PCA scores

Added tangentcoords option to shapes.cva and output all the CV scores (rather than just 3)

Improved the 3d sphere plot for pns()

speed up pnss3d when n < km-m(m-1)/2-m

1.2.6

Added in pnss3d and plot3darcs for displaying the PNSS modes of variation

1.2.5

Corrected bug in estcov for method="Power" when exit occurred in some zero
eigenvalue cases, by including abs(eigenvalue)  

Faster versions of some functions kindly supplied by 
Gregorio Quintana-Orti and Amelia Simo, University Jaume I, Spain.

1.2.4 

Added Principal Nested Spheres (pns)
Added Principal Nested Shape Spaces using PCA (pns4pc)
Updated some references in help files

1.2.3

Minor adjustment to Penalized Euclidean Distance regression function, including a different name  ped()

1.2.2

Added in a function to carry out Penalized Euclidean Distance 
regression, which is a sparse regression method (Vasiliu et al., 2017, arxiv).

Renamed the function sigma() to sigmacov() prevent a warning that the
same function name is used in the `stats' package. 

1.2.1

corrected a bug in the calculation of 
principal warp eigenvectors in the function shaperw, which in turn 
is used by  procGPA (thanks to Paolo Piras)

1.2.0

corrected an error in apes$x[,,60] data, which
should have been the same as panf.dat[,,1] (thanks to Katie Severn)


1.1-13

Corrected a bug in shaperw for the m=3 case (transposes needed)
(thanks to Valerio Varano and Paulo Piras)

internal expression of bendingenergy (benergy in TPSgrid) has correct constant now. (thanks to Valerio Varano) 


1.1-12

procdist - function added to compute different types of Procrustes shape distances


1.1-11

MDSshape - function added to compute MDS mean shape

Several new datasets added 


1.1-10

procGPA fixed recently introduced error in reading in complex matrices

procGPA( , scale=FALSE,pcaoutput=FALSE) was still calculating PCA, so
                                        this has now been fixed.  

The internal function prcomp1 now uses eigen() rather than svd(), due to some 
convergence issues in LAPACK for some singular matrices. 


transformations()
:relative translations between centroids now given, rather than just translating the original to have centroid at the origin. 
