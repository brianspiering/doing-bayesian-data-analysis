#!/usr/bin/env Rscript

# File description -------------------------------------------------------------
# Goal: Toss a coin N times and compute the running proportion of heads.
#

# General setup ----------------------------------------------------------------
cat("\014")  # Clear console
rm(list=ls()) # Delete all variables
graphics.off() # Close all open plots

# Define variables -------------------------------------------------------------
n_flips <- 500	# Specify the total number of flips
set.seed(1) # Set to constant random seed
# Generate a random sample
flipsequence = sample(x=c(0,1), # Sample from coin (heads=1, tails=0)
                      prob=c(.5,.5), # Define a fair coin
                      size=n_flips, # Number of flips
                      replace=TRUE ) # Sample with replacment

# Compute the running proportion of heads -------------------------------------
r = cumsum( flipsequence ) # The function "cumsum" is built in to R.
n = 1:n_flips              # n is a vector.
runprop = r / n            # component by component division.

# Graph the running proportion -------------------------------------------------
plot( n , runprop , type="o" , log="x" ,
	  xlim=c(1,n_flips) , ylim=c(0.0,1.0) , cex.axis=1.5 ,
	  xlab="Flip Number" , ylab="Proportion Heads" , cex.lab=1.5 ,
	  main="Running Proportion of Heads" , cex.main=1.5 )

# Plot a dotted horizontal line at y=.5, just as a reference line:
lines( c(1,n_flips) , c(.5,.5) , lty=3 )
# Display the beginning of the flip sequence. These string and character
# manipulations may seem mysterious, but you can de-mystify by unpacking
# the commands starting with the innermost parentheses or brackets and
# moving to the outermost.
flipletters = paste( c("T","H")[ flipsequence[ 1:10 ] + 1 ] , collapse="" )
displaystring = paste( "Flip Sequence = " , flipletters , "..." , sep="" )
text( 5 , .9 , displaystring , adj=c(0,1) , cex=1.3 )
# Display the relative frequency at the end of the sequence.
text(n_flips, .3 , paste("End Proportion =",runprop[n_flips]) , adj=c(1,0) , cex=1.3 )
