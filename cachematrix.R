## Put comments here that give an overall description of what your
## functions do

## Creates a speial "matrix", which is really a list containing a function to 1. set the value of the matrix, 
## 2. get the value of the matrix 3. set the inverse 4. get the inverse
makeCacheMatrix <- function(x = matrix()) {
			m <- NULL
			set <- function(y){
				   x <<- y			## Assign value in different environment
				   m <<- NULL
			}
			get <- function() {x}
			setSolve <- function(solve) {m <<- solve}
			getSolve <- function() {m}
			list(set = set, get =get,
				 setSolve = setSolve,
				 getSolve = getSolve)	   	
}


## Calculate the inverse of matrix x using solve function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getSolve()		   
        if(!is.null(m)){			## if m exists then print message and return cache data	
        		message("getting cached data")
        		return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setSolve(m)
		m
}
