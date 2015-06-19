## Allows user to cache matrix and/or inverse
## and then retrieve or calculate inverse of matrix on command.

## Returns a list of functions designed to cache/retrieve a matrix or its inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(m) {
            x <<- m
            inv <<- NULL
      }
      get <- function() x
      setinv <- function(i) inv <<- i
      getinv <- function() inv
      list(set = set,get = get, setinv = setinv,
           getinv = getinv)
      

}


## Checks to see if inverse is in cache, if not calculates

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      invmtx <- x$getinv()
      if (is.null(invmtx)) {
            print ('calculating inverse...')
            mtx <- x$get()
            return (solve(mtx))
      }
      else {
            print('returning cached data')
            return(invmtx)
      }
}
