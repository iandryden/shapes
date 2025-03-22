\name{testmeanshapes}
\alias{testmeanshapes}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Tests for mean shape difference, including permutation and bootstrap tests}
\description{
Carries out tests to examine differences in mean shape
between two independent populations, for $m=2$ or $m=3$ dimensional data. 
Tests are carried out using tangent co-ordinates. 

H : Hotelling $T^2$ statistic (see Dryden and Mardia, 2016, equ.(9.4))

G : Goodall's F statistic (see Dryden and Mardia, 2016, equ.(9.9))

J : James $T^2$ statistic (see Amaral et al., 2007)

p-values are given based on resampling (either a bootstrap test or a permutation test) 
as well as the usual table based p-values. Bootstrap tests involve sampling with replacement under H0 
(as in Amaral et al., 2007). 

Note when the sample sizes are low (compared to the number of landmarks) some minor regularization 
is carried out. In particular if Sw is a singular within group covariance matrix, it is replaced by 
Sw + 0.000001 (Identity matrix) and a `*' is printed in the output. 

}
\usage{
testmeanshapes(A, B, resamples = 1000, replace = FALSE, scale= TRUE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{A}{The random sample for group 1: k x m x n1 array of data, where
k is the number of landmarks and n1 is the sample size. (Alternatively a k x n1 complex matrix for 2D)}
  \item{B}{The random sample for group 2: k x m x n2 array of data, where
k is the number of landmarks and n2 is the sample size. (Alternatively a k x n2 complex matrix for 2D)}
  \item{resamples}{Integer. The number of resampling iterations. If resamples = 0 then no resampling
procedures are carried out, and the tabular p-values are given only.}
    \item{replace}{Logical. If replace = TRUE then bootstrap resampling is
    carried out with replacement *within* each group. If replace = FALSE then permutation 
    resampling is carried out (sampling without replacement in *pooled* samples).}
    \item{scale}{Logical. Whether or not to carry out Procrustes with scaling in the procedure.}
}

\value{
  A list with components 
   \item{H}{The Hotelling statistic (F statistic)}
   \item{H.pvalue}{p-value for the Hotelling test based on resampling}
   \item{H.table.pvalue}{p-value for the Hotelling test based on the null F distribution, assuming normality
   and equal covariance matrices}
   \item{J}{The James $T^2$ statistic}
   \item{J.pvalue}{p-value for the James $T^2$ test based on resampling}
   \item{J.table.pvalue}{p-value for the James $T^2$ test based on the null F distribution, assuming normality
   but unequal covariance matrices}   
\item{G}{The Goodall $F$ statistic}
   \item{G.pvalue}{p-value for the Goodall test based on resampling}
   \item{G.table.pvalue}{p-value for the Goodall test based on the null F distribution, assuming normality and
   equal isotropic covariance matrices)}

}

\references{Amaral, G.J.A., Dryden, I.L. and Wood, A.T.A. (2007) Pivotal bootstrap methods for 
$k$-sample problems in directional statistics and shape analysis.  Journal of the American Statistical Association.   102, 695-707. 

Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with applications in R (Second Edition). Wiley, Chichester. Chapter 9.

Goodall, C. R. (1991). Procrustes methods in the statistical analysis
of shape (with discussion). Journal of the Royal Statistical Society,
Series B, 53: 285-339.
}




\author{Ian Dryden}

\seealso{resampletest}

\examples{

#2D example : female and male Gorillas

data(gorf.dat)
data(gorm.dat)

A<-gorf.dat
B<-gorm.dat
testmeanshapes(A,B,resamples=100)

}




\keyword{multivariate}% at least one, from doc/KEYWORDS
