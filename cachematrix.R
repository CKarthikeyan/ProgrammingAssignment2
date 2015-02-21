## The code below has two functions 
## makeCacheMatrix - which creates an object having options to store and matrix and its inverse.
## cacheSolve - uses the makeCacheMatrix object to obtain inverse from the cache

## function takes input as an invertible matrix and stores it, it also sets the 
## inverse and gets the inverse for an instance of this object

makeCacheMatrix <- function(toinvert) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() toinvert
        setinverse <- function(inverted) m <<- inverted
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function takes in an object of the type makeCacheMatrix and returns 
## inverse from cache if it exists or calculates the inverse if it does not exist.
## It also sets the inverse so that next calls to the object result in cache reads

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
