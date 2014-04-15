## cache a matrix's inverse to avoid compute the inverse repeatedly

## this function creates a object which cache the matrix an it's inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y){
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverseMatrix <<- inverse
  getInverse <- function() inverseMatrix
  
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse
       )
}


## this function will generate the inverse from cache if possible

cacheSolve <- function(x, ...) {
  inverseMatrix <- x$getInverse()
  if(!is.null(inverseMatrix)){
    message("getting cached data")
    return(m)
  }
  oriMatrix <- x$get()
  inverseMatrix <- solve(oriMatrix,...)
  x$setInverse(inverseMatrix)
  inverseMatrix
}

