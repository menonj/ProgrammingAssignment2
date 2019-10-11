## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      mtx <- NULL
      set <- function(y) {
        x <<- y
        mtx <<- NULL
      }
      get <- function() x
      setmatrix <- function(mtx1) mtx <<- mtx1m<
      getmatrix <- function() mtx
      list(set = set, get = get,
          setmatrix = setmatrix,
          getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    mat <- x$get()
    ## Reverse matrix using apply rather than solve. I'm not sure
    ## if this was the way to do the reverse, but it seemed more understandable than
    ## using the solve function
    m <- apply(mat,2,rev)
    x$setmatrix(m)
    m
}
