cacheSolve <- function(x)
{
  ## compute the inverse of a matrix that is returned by makeCacheMatrix.  
  ## If the inverse has already been calculated and the matrrix has not changed, 
  ## then this function will retrieve the inverse from the cache
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
