## Put comments here that give an overall description of what your
# Wonjae Kim
# 
## functions do

## Write a short comment describing this function
# Matrix Object to save inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  inverse_x <- NULL
  set <- function(y) {
    x <<- y
    inverse_x <<- NULL
  }
  get <- function() {
    x
  }
  setInverse <- function(im) {
    inverse_x <<- im
  }
  getInverse <- function() {
    inverse_x
  }
  list( set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# return inverse matrix whith makeCacheMatrix Object
cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if( !is.null(inverse) ) {
    message("getting cached matrix")
    return (inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  ## Return a matrix that is the inverse of 'x'
}