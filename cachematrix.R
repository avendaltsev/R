## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv2 <- NULL
    set <- function(y) {
        x <<- y
        inv2 <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv2 <<- inverse
    getinverse <- function() inv2
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Решение cacheSolve для задания

cacheSolve <- function(x, ...) {
       inv2 <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv2)
    }
    data <- x$get()
    inv2 <- solve(data)
    x$setinverse(inv2)
    inv2
}
