## Our task is to develope two code which calculates the inv of matrix  
## makeCacheMatrix can cache the inverse of matrix which is calculated in cacheSolve

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}


## CacheSolve is a function which calculates the inverse of matrix, if the inverse 
## has already been calculated by makeCacheMatrix, then cachesolve takes the matrix inverse 
## result from cache and thus further computations are saved

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...) 
  x$setinverse(inv)
  inv
  
}
