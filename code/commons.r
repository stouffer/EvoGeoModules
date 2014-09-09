
incidence <- function(x)
{
   A <- get.adjacency(x, sparse=FALSE)
   A <- A[rowSums(A)>0, colSums(A)>0]
   return(A)
}
