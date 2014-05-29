## Doing Bayesian Data Analysis: A Tutorial with R and BUGS

Exploring John K. Kruschke's Doing Bayesian Data Analysis: A Tutorial with R and BUGS.  

### Useful Links:
[Buy a copy](http://www.amazon.com/Doing-Bayesian-Data-Analysis-Tutorial/dp/0123814855)  
[Book homepage](http://www.indiana.edu/~kruschke/DoingBayesianDataAnalysis/)  
[Orginal R code](http://www.indiana.edu/~kruschke/DoingBayesianDataAnalysis/Programs/)  

### (Rough) Guide to getting `rbugs` and `rjags` packages working
This *might* work for OS X 10.9:
1. [Install R 2.14 ](http://cran.r-project.org/bin/macosx/old/index-old.html)
2. [Install R Switch App](http://r.research.att.com/). Allowa for simple switching between older and newer versions of R
3. `install.packages("rbugs")` in R
4. `install.packages("rjags")` in R
5. [Install JAGS: Just Another Gibbs Sampler](http://sourceforge.net/projects/mcmc-jags/files/latest/download?source=files). [HT](http://dr-k-lo.blogspot.com/2013/03/problems-loading-jags-into-r.html)
6. `require("rbugs")` in R
7.  `require("rjags")` in R