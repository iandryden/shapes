\name{resampletest}
\alias{resampletest}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Tests for mean shape difference using complex arithmetic, including bootstrap and permutation tests. 
}
\description{
Carries out tests to examine differences in mean shape
between two independent populations.
For 2D data the methods use complex arithmetic and exploit the geometry of
the shape space (which is the main use of this function). An alternative 
faster, approximate procedure using Procrustes residuals is given
by the function `testmeanshapes'.
For 3D data tests are carried out on the Procrustes residuals, 
which is an approximation suitable for small variations in shape.

Up to four test statistics are calculated:

lambda : the asymptotically pivotal statistic $lambda_min$ from Amaral et al. (2007), equ.(14),(16)
  (m=2 only)

H : Hotelling $T^2$ statistic (see Amaral et al., 2007, equ.(23), Dryden and Mardia, 2016, equ.(9.4))

J : James' statistic (see Amaral et al., 2007, equ.(24) )
  (m=2 only)

G : Goodall's F statistic (see Amaral et al., 2007, equ.(25), Dryden and Mardia, 2016, equ.(9.9))

p-values are given based on resampling as well as the usual table based p-values.

Note when the sample sizes are low (compared to the number of landmarks) some regularization 
is carried out. In particular if Sw is a singular within group covariance matrix, it is replaced by 
Sw + 0.000001 (Identity matrix) and a `*' is printed in the output. 

}
\usage{
resampletest(A, B, resamples = 200, replace = TRUE)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{A}{The random sample for group 1: k x m x n1 array of data, where
k is the number of landmarks and n1 is the sample size. (Alternatively a k x n1 complex matrix for 2D)}
  \item{B}{The random sample for group 3: k x m x n2 array of data, where
k is the number of landmarks and n2 is the sample size. (Alternatively a k x n2 complex matrix for 2D)}
  \item{resamples}{Integer. The number of resampling iterations. If resamples = 0 then no resampling
procedures are carried out, and the tabular p-values are given only.}
    \item{replace}{Logical. If replace = TRUE then for 2D data bootstrap resampling is
    carried out with replacement *within* each group. If replace = FALSE then permutation 
    resampling is carried out (sampling without replacement in *pooled* samples).}
}

\value{
  A list with components (or a subset of these)
   \item{lambda}{$lambda_min$ statistic}
   \item{lambda.pvalue}{p-value for $lambda_min$ test based on resampling}
   \item{lambda.table.pvalue}{p-value for $lambda_min$ test based on the asymptotic chi-squared distribution (large n1,n2)}
   \item{H}{The Hotelling $T^2$ statistic}
   \item{H.pvalue}{p-value for the Hotelling $T^2$ test based on resampling}
   \item{H.table.pvalue}{p-value for the Hotelling $T^2$ test based on the null F distribution, assuming normality
   and equal covariance matrices}
   \item{J}{The Hotelling $T^2$ statistic}
   \item{J.pvalue}{p-value for the Hotelling $T^2$ test based on resampling}
   \item{J.table.pvalue}{p-value for the Hotelling $T^2$ test based on the null F distribution, assuming normality
   and unequal covariance matrices}
   \item{G}{The Goodall $F$ statistic}
   \item{G.pvalue}{p-value for the Goodall test based on resampling}
   \item{G.table.pvalue}{p-value for the Goodall test based on the null F distribution, assuming normality and
   equal isotropic covariance matrices)}

}

\references{Amaral, G.J.A., Dryden, I.L. and Wood, A.T.A. (2007) Pivotal bootstrap methods for 
$k$-sample problems in directional statistics and shape analysis.  Journal of the American Statistical Association.   102, 695-707. 

Dryden, I.L. and Mardia, K.V. (2016). Statistical 
Shape Analysis, with Applications in R (Second Edition). Wiley, Chichester. Chapter 9.

Goodall, C. R. (1991). Procrustes methods in the statistical analysis
of shape (with discussion). Journal of the Royal Statistical Society,
Series B, 53: 285-339.
}




\author{Ian Dryden}

\seealso{testmeanshapes}

\examples{

#2D example : female and male Gorillas

data(gorf.dat)
data(gorm.dat)

#just select 3 landmarks and the first 10 observations in each group
select<-c(1,2,3)
A<-gorf.dat[select,,1:10]
B<-gorm.dat[select,,1:10]
resampletest(A,B,resamples=100)

}




\keyword{multivariate}% at least one, from doc/KEYWORDS
