makeCacheMatrix <- function(x = matrix()) 
{
  ## this function creates a matrix object that can cache its own inverse.
  ## the following is done
  ## set the value of the matrix
  ## get the value of the matrix
  ## set the value of the inverse
  ## get the value of the inverse
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
