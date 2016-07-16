## Catching the inverse of a matrix
## Matrix is invertible
##Set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse

makeCacheMatrix <- function (x=matrix()){ m - NULL
  set <-function (y){
    x <<- y
    m <<- NULL
  }
  get <<-function()x
  setinverse <-function(iv)m <<-solve(x)
  getinverse < - function ()m 
  list(set = set, get = get, setInverse = setInverse,
       getInverse = getInverse)}




## Cachsolve will calculate inverse of the matrix

cacheSolve <- function(x, ...) { #comparematrix
  m <- x$getInverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()
  m <- solve(mat, ...)
  x$setInverse(m)
  m
}



        ## Return a matrix that is the inverse of 'x'

