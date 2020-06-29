## Here makecachematrix function calculate inverse of matrix and
## save to cache and after user tried to calculate inverse of that matrix 
## the stored value will return rather than recalculating

## The first fuction, makeCacheMatrix creates a special "Matrix", which is really a list.
##1. Set the value of matrix
##2. get the value of matrix
##3. set the value of mean
##4. get the value of mean

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL ##define cache m
        set <- fuvtion(y){
                x <<- y ## assign the input matrix y to x variable
                m <<- NULL ## re-initializing m to NULL in parent environment
        }
        get <- function() x  ## return x
        ## set cache value to inverse of matrix m
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m ## return cache inverse of x
        list(set = set, get = get, setinverse = setinverse, 
             getinnverse = getinverse)
}


## cacheSolvbe calculate inverse of matrix created in above function
## It first check if inverse is calculated or not. If so, it assign inverse from cache
## if isn't, it calculate inverse and save to the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
