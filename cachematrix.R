## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(m) {
            x <<- m
            inv <<- NULL
      }
      get <- function() x
      setinv <- function(i) inv <<- i
      getinv <- function() i
      list(make = make,see = see, makeinv = makeinv,
           seeinv = seeinv)
      

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
