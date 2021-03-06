poLCA.entropy <-
function(lc) {
    K.j <- sapply(lc$probs,ncol)
    fullcell <- expand.grid(lapply(K.j,seq,from=1))
    P.c <- poLCA.predcell(lc,fullcell)
    return(-sum(P.c * log(P.c),na.rm=TRUE))
}
