

makeCacheMatrix <- function(x = matrix()) {
  ## An initial object mat is set to NULL
  mat <- NULL
  ## The setter is created
  set <- function(z) {
    ## The argument for set (z) takes up the place of x in the original function
    x <<- z
    ## the mat object stays empty
    mat <<- NULL
  }
  ## the getter just retrieves whatever value x has in the moment of its invocation (recall the
  ## setter function) 
  get <- function() x
  #setIn gives the inverse matrix using Inv as an input, and saving it as mat
  setIn <- function(inv) mat <<- inv
  ## getIn retrueves the value of mat (NULL if an inverse Inv is not inicialized and defined)
  getIn <- function() mat
  ## all the subfunctions are listed and declared
  list(set = set, get = get, setIn = setIn, getIn = getIn)
  
  
}


## Write a short comment describing this function



cacheSolve <- function(x, ...) {
  ## n retrieves the inverse of matrix x obtained previously
  n <- x$getIn()
  ## if such matrix is NOT empty, then return the already cached matrix
  if(!is.null(n)){
    print("retrieving cached data")
    return(n)
    
  }
  ## if it is, obtain the inverse
  dat_ <- x$get()
  n <- solve(dat_, ...)
  x$setIn(n)
  n
  
}
