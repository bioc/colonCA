\name{colonCA}
\alias{colonCA}
\docType{data}
\title{Data from the microarray experiment done by Alon et al. (1999)}
\description{
  The data package contains an exprSet instance for the Alon et al. (1999) colon cancer data. 62 samples (40 tumor samples, 22 normal samples) from colon-cancer patients were analyzed with an Affymetrix oligonucleotide Hum6000 array.
}
\usage{data(colonCA)}
\format{
Expression set with 2000 genes and 62 samples. \cr
 There are 3 covariates listed.
 \itemize{
  \item \code{expNr}: Number of sample.
  \item \code{samp}: Sample code. \cr 
   positive: Normal tissue, negative: Tumor tissue
  \item \code{class}: Tissue identity. \cr 
   n: Normal tissue, t: Tumor tissue
}
}
\details{
40 samples are from tumors (labelled as "negative") and 22 samples are from normal (labelled as "positive") biopsies from healthy parts of the colons of the same patients. \cr
Two thousand out of around 6500 genes were selected based on the confidence in the measured expression levels (for details refer to publication). No further preprocessing (normalization etc.) was done.
}
\source{
  \url{http://microarray.princeton.edu/oncology/affydata/index.html}
}
\references{
  U. Alon et al. (1999): Broad patterns of gene expression revealed by clustering analysis of tumor and normal colon tissue probed by oligonucleotide arrays. \emph{Proc. Natl. Acad. Sci. USA} \bold{96}, 6745-6750
}
\examples{
library(Biobase)
data(colonCA)
xx <- exprs(colonCA)
dim(xx)
xx[1:5,1:5]

colonCA$class
geneNames(colonCA)[1:20]
colnames(xx) <- as.character(colonCA$class)
xx[1:5,1:5]
}
\keyword{datasets}
