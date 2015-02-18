## The functions cache and return the inverse of a matrix

## The function creates creates an object that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- yc
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv.mx) inv <<- inv.mx
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## This function computes the inverse of the matrix returned by makeCacheMatrix 

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}