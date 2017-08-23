#!/usr/bin/env Rscript
# R data_structures and subsetting

##Vectors
# '<-' assigns variables in the left to values on the right.

a<- c(3,7,5,'abc') # c implies for character vector.

class(a) # class gives data_structure information. 

a_index<- a[1] # Vector Subsetting follows index in [], where index starts from 1.

a_mul_index<- a[c(2,4)]

a_reverse<- a[-1] # Prints the vector in reverse order except the value on index=1.

names(a)<- c('n1', 'n2', 'n3', 'letters') # To give names to each value in a vector.


##Matrics
# matrix() fuction creates a NxM matrix.

mat<- matrix(1:20, nrow=5, byrow=TRUE) # byrow fills the matrix by each row

mat2 <- matrix(a, nrow = 2, dimnames = list(c('R1', 'R2'), c('C1', 'C2'))) # dimnames gives names to rows and columns 

sub_mat<- mat[1,3] # first row, third column element
sub_mat2<- mat[2,] # second row, all columns

mat <-cbind(mat, c(3,2,5,7,6)) # column bind appends a column of values or a matrix.
mat<- rbind(mat, c(11,13,15,17,19)) # row bind appends a row of values or a matrix

##DataFrames
# data.frame() function creates a data frame, they are similar to matrices but can have any number of data types.

b<- c(22,76,35,41)

colour<- c('Blue', 'Black', 'Red', NA) # will explain NA later

boolean<- c(TRUE, FALSE, FALSE, TRUE)

frame<- data.frame(b,colour, boolean)

frame[3,2]

frame$boolean # The '$' notation helps fetch an entire column

##Factors
# The factor() function creates ordered/unordered factors w|w/o levels.

rating<- c('medium', 'large', 'small')

factor_rating<- factor(rating, ordered=TRUE, levels = c('small', 'medium', 'large')) # Ordinal variables can be factored to create levels.

#OUTPUT:
#> factor_rating
#[1] medium large  small 
#Levels: small < medium < large

##Lists
#list() function creates a list.

li<- list(3,2)
li[[1]] #Data in list li on first index

