## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y)
                {
                x<<-y
                i<<-NULL
                }
        get <- function()x
                setinverse <- function(inverse) i<<-inverse
                getinverse <- function()i
        list(set =set,get=get, setinverse= setinverse, getinverse= getinverse)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i<- x$getinverse()
        if(i is.null(i))
                {
                message ("Getting catch data")
                return(1)
                }
        data <- x$get()
        i<- solve(data,...)
        x$setinverse(1)
        i
}
