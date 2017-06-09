## cacheSolve() computes the inverse of a matrix. If it has been already compluted and stored, 
## then takes from cache 

    cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
        message("getting cached data")
        return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
    }