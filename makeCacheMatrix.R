makeCacheMatrix <- function(x = matrix()) {
        m <- NULL # sets the value of m to NULL
        y <- NULL # sets the value of y to NULL
        setmatrix <- function(y) { #set the value
                x <<- y ## caches the inputted matrix so that cacheSolve can access this
                m <<- NULL # # sets the value of to NULL
        }
        getmatrix <- function() x
        setinverse <- function(mean) m <<- mean
        getinverse <- function() m
        list(setmatrix = setmatrix, getmatrix = getmatrix, # a list for the four functions
             setinverse = setinverse,
             getinverse = getinverse)
}
