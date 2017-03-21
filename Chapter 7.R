Chapter 7
7.1 Introduction

1.) Point Estimation
	Definition - Let θ represent an arbitrary parameter of a population. It can be, for example, the population
	mean µ or the population proportion p. The objective of point estimation is to find a function
	of data that can provide a reasonable estimate of θ. Such a function is called a point estimator,
	denoted by 𝜃̂. A point estimate is simply a specific value of a point estimator.

example 1
Example: The parameter of interest is the true average lifetime of certain car batteries. A
random sample of n=5 batteries yields the following lifetimes (years)
X1=5, X2=4, X3=4.5, X4=4.2, X5=3.8.
The parameter is µ. The most reasonable estimator and estimate are:
Estimator 𝜇̂= 𝑋̅, and estimate 𝑥̅= 4.3 years.

2.) Unbiased Estimators
	Q:  We can propose several different estimators for a given parameter. For example, both
	sample mean and sample median are reasonable estimators of population mean. How do we
	choose which estimator to use for estimating the population parameter in a given situation?

	Definition: If a sample statistics has a mean equal to the population parameter the statistic is
	intended to estimate, that is, E(𝜃̂)=θ, the statistic is said to be an unbiased estimator of the
	parameter. Otherwise, the statistic is said to be a biased estimator, and the difference E(𝜃̂) – θ
	is called the bias of 𝜃̂.
example 1
Suppose X, the number of successes, has a binomial distribution with parameters n	## Population Standard Deviation use Z ##
and p. Then, the sample proportion X / n is an unbiased estimator of p.			## Sample Standard Deviation use T ##
		
example 2
Show that the usual sample variance S 2 is an unbiased estimator for the population variance σ^2, 
but the intuitive estimator 𝜎̂^2 = 1/n ∑(𝑋𝑖 − 𝑋̅)^2 is biased.

3.) Variance of a Point Estimator 
	
7.2 Single Sample: Estimating the Mean


2) Confidence Level, Precision, and Sample Size
	- For a fixed sample size, the higher the confidence level, the wider the resulting
	  confidence interval will be, that is, less precise the estimation will be.
	- We may increase the sample size to obtain both the desired confidence level and
	  the precision of the estimation.
	- The half-width of a confidence interval is called sampling error (or margin of error,
	  or maximum error of estimate) or the bound on the error of estimation
	- If sample mean X¯is used as an estimate of U, we can be 100(1-a)% confident that
	  the error will not exceed... 
						Za/2 a/vn
	- If sample mean X¯is used as an estimate of U, we can be 100(1-a)% confident that
	  the error will not exceed a specific amount SE when the sample size is
						n =
Note:
	1). If s is unknown, we can use the sample standard deviation s
	2). To ensure that the sample size is sufficient to achieve the specified
	    reliability, we should always round the value of n obtained up to the next integer.
			
			90% confidence interval for N.
				(6.19,6.90)
			Interpertation. We are 90% confident that _____ falls in the interval _____.

example 1
Suppose we wish to estimate the average age of the students at YSU. How
large a sample is necessary if we want to be 95% confident that the sample mean will
be within 1 year of the true mean. From a previous study, the standard deviation of the
ages is known to be 3 years.
						n = ((1.96 * 3)/ 1)^2    ## Z is found from chart ##
						n = 34.57 ~ 35
			We are 95% confident that... 

3) Suppose a 95% confidence interval for the average age of students attending YSU is (22,24). 
   Which of the following statements is correct? (Assume YSU has 13,000 students.)

	a) We can say with 95% confidence that the average age falls between 22 and 24 years.
		TRUE
	b) We are highly confident that 95% of YSU students’ age falls in the interval.
		FALSE
	c) We can say with 95% confidence that the confident interval (22, 24) contains the true
	   population mean.
		TRUE
example in class:

sample 1 <--------------->
	 22             24
sample 2 -<------------->-			## This will be done many times ##
						## Confidence level will cover said % ##
sample 3 -<-------->------	      		## Interval is centered at mean ##	
							
sample 2000...		
	
Section 7.3 
1. Independent Samples
	Recall: Let 𝑋̅1 represent the mean of a random sample of size 𝑛1 selected from the population
	with mean 𝜇1 and variance 𝜎^2, and 𝑋̅2 represent the mean of a random sample of size 𝑛2
	selected from the population with mean 𝜇2 and variance 𝜎22. If the two samples are independent and both 𝑛1 and 𝑛2 are 
	sufficiently large, then the sampling distribution of the differences of means, 𝑋̅1 - 𝑋̅2, is approximately 
	normal with mean and variance given by
			𝜇 (𝑋̅1-𝑋̅2) = 𝜇1-𝜇2 and 𝜎^2(𝑋̅1-𝑋̅2) = 
Formula:
population 1 (𝜇1 , 𝜎^2)			population 2 (𝜇2 , 𝜎^2)
parameter (𝜇1 - 𝜇2)				
Sample 1 with size of n,
	(𝑋̅1 , S^2)	[𝑋̅1 - 𝑋̅2]	
Independent Sampling 
	𝑋̅1 ~ N(𝜇1 , 𝜎^2/n1)
	𝑋̅2 ~ N(𝜇2 , 𝜎^2/n2)
If 𝑋̅1 and 𝑋̅2 are independent then 𝑋̅1- 𝑋̅2 ~ N(𝜇1 - 𝜇2 , 𝜎^2/n1 + 𝜎^2/n2)			
	
A (100 - a)% C.I. for 𝜇1  - 𝜇2 is (𝑋̅1- 𝑋̅2) +- Z * sqrt(𝜎^2/n1 + 𝜎^2/n2)			## Z value is still from chart ##

examaple 1
A study was conducted in which two types of television picture tubes, one from manufacturer A and the other from 
manufacturer B , were compared. The average lifetime of a random sample of 36 tubes from manufacturer A was 
found to be 7.5 years with a sample variance .9 years, and the average lifetime of a random sample of 49 tubes from manufacturer
B was found to be 7 years with a sample variance .8 years. Find a 95% confidence interval on the difference between two 
population means, 𝜇𝐴 − 𝜇𝐵.
	n1 = 36, 𝑋̅1 = 7.5, 𝜎^2 = .9			## n values are sample size, 𝑋̅ are interperting variables, and 𝜎^2 is S.D. ## 
	n2 = 49, 𝑋̅2 = 7 , 𝜎^2 = .8			
	A 95% C.I. for 𝜇1 - 𝜇2 is between (.1 , .9)
	
example 2						##  Both 𝝈𝟏 and 𝝈𝟐 are unknown ##
A 100(1-α)% confidence interval for 𝜇1- 𝜇2 when both samples are large or both population distributions are normal, 
and both population variances 𝜎1 and 𝜎2 are unknown is given by
							## In this case Z is replaced with T and 𝜎1 and 𝜎2 are replaced with S ##
A study was conducted in which two types of television picture tubes, one from
manufacturer A and the other from manufacturer B , were compared. The average lifetime of a
random sample of 36 tubes from manufacturer A was found to be 7.5 years with a sample
variance .9 years, and the average lifetime of a random sample of 49 tubes from manufacturer
B was found to be 7 years with a sample variance .8 years. Find a 95% confidence interval on
the difference between two population means, 𝜇𝐴 − 𝜇𝐵.

Sample 1 (A) 			Sample 2 (B)
	n = 36			n = 49
	𝑋̅1 = 7.5		  𝑋̅1 = 7
	S1 = .9			S2 = .8
 𝜇1 = S1/n1 = .9/36 = .025				## First calculate  𝜇  values ##
 𝜇2 = S2/n2 = .8/49 = .1063
Plug in to your T formula 				## Need to rearrange formula to solve for V ## 
	A: 72.68
In R 
	qt (.975, 72.69) = 6.993145
Then we find the confidence interval
A 95% C.I. for  𝜇1 -  𝜇2 is 
	(7.5 -7) +- 2 * sqrt(.025+.0163)		## Same formula we have been using for Confidence Interval ##
	= .5 +- .41 = (.09 , .91)

------- ## Note ## -------------------------------------------------------------------------------------------------------------------- 
	When n1 and n2 are large (>= 30) V ~ n1 + n2 -2    ## Just an approximation ##
	In above Example, V ~ 36 + 49 -2 = 83
	In R:
		qt(.975 , 83) = 6.98896   		## Very close to our exact answer from earlier ##
----------------------------------------------------------------------------------------------------------------------------------------
In calss example	(𝜇1)		(𝜇2) 		  ## Weight loss program, initial weight and ending weight ##
	Subjects 	Before		After
	1		150		145		## Was the program effective? ##
	2		175		172		## In this example it is dependent sampling, The results before and after are  
	.		.		.		## not independent of each other ##
	.		.		.
	.		.		.
	50		200		198
	
C.I. for (𝜇1 - 𝜇2)
	if between (1.2 , 3.4) then program is successful
	also could say successful if (𝜇1 - 𝜇2) > 0		## Can no longer say that 𝑋̅1 - 𝑋̅2 ~N because not independent ##
	
	
	
	
	
	
	
	
	
	
	
	
