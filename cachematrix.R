#Since matrix inversion can be costly, it is useful to cache the inverse of a matrix instead
#of computing it  repeatedly. This means if the contents of the matrix are not changing, it
#may be a good idea to store the computed inverses rather then computing for the same value again.


#This function is makeCacheMatrix. makeCacheMatrix is a function that will create a 'matrix' object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set<-function(y)
{
  x<<-y #difference environment
  i<<-NULL
}
get<-function()x
setinverse<-function(inverse) i<<-inverse
getinverse<-function()i
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


#This function is cacheSolve. cacheSolve is a function that compute the inverse of the special 'matrix' returned by makeChacheMatrix.
#if the inverse has already been calculated (and the matrix has not changed), then the cachesolve should
#retrieve the inverse from the cache

cacheSolve <- function(x, ...) {


}
