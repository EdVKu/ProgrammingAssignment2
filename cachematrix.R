## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


makeCacheMatrix <- function(x = matrix()) {
  if(length(x)==4)
    n <<- x
  ## the n object is declared to be used outside of the function, in order for it to be cached by other 
  ## functions
  else
    break
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## returns the inverse of a matrix "n"
  h <- solve(n)
  return(h)
  ## Return a matrix that is the inverse of 'x'
}
