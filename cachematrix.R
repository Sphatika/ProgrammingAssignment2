#Function makeCacheMatrix takes a matrix as an input, set the value of the matrix,get the value of the matrix, set the inverse Matrix and get the inverse Matrix. 
#The matrix object can cache its own object.


makeCacheMatrix <- function(x = matrix()){
	#Initialisation
	inverse <- NULL 
	
	set <- function(matrix){
		#Setting original matrix
		x <<- matrix
		inverse <<- NULL
	}
	
	get <- function(){
		#Returning original matrix
		x 
	}
	
	setInverse <- function(newInverse){
		#Setting inversed matrix
		inverse <<- newInverse
	}
	
	getInverse <- function(){
		#Returning inversed matrix
		inverse
	}
	
	list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
 
}

#  The function cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as an input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not.

#  In case inverse matrix from makeCacheMatrix((matrix) is empty, it gets the original matrix data from and set the invertible  matrix by using the solve function.

# In case inverse matrix from makeCacheMatrix((matrix) has some value in it (always works after running the code 1st time), it returns a message  "getting cached data" and the cached object



cacheSolve <- function(y, ...){
	## Return a matrix that is the inverse of 'y'

inverseMatrix <- y$getInverse()

#print(inverseMatrix)

    ## Just return the inverse if its already set

 





 if( !is.null(inverseMatrix) ) {
message("getting cached data")
 return(inverseMatrix)
    }




    ## Get the matrix from our object

    orginalMatrix <- y$get()



    ## Calculate the inverse using matrix multiplication

     inverseMatrix  <- solve(orginalMatrix, ...) 



    ## Set the inverse to the object

    y$setInverse(inverseMatrix)



    ## Return the matrix

   return(inverseMatrix)    
}