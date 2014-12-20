cacheSolve <- function (x, ...) {
        m <- x$getinverse() # gets a previously calc inverse
        if(!is.null(m)){ # has cacheSolve has been run before
                if(x$setmatrix() == x$getmatrix()) { # if matrix has changed sends a message
                        message("getting cached data")
                        return(m)
                }
                # otherwise 
                y <- x$getmatrix() # run the getmatrix
                x$setmatrix(y) # run the setmatrix to cache
                m <- solve(y, ...) # compute the value of the inverse
                x$setinverse(m) # run the setinverse function the above
                m # return the inverse
}}
