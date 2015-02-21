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
