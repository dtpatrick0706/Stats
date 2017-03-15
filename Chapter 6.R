Chapter 6 Sampling Distributions

SECTION 6.1 THE CONCEPT OF SAMPLING DISTRIBUTIONS

1) A parameter is a descriptive measure for a population.
2) A statistic is a descriptive measure for a smaple. (mean[x bar], pop parameter[weird M]
3) The value of a statistic depends on the particular sample selected from the population, and it
   will vary from sample to sample. This variability is called sampling variability.
4) The sampling distribution -- The probability distribution of a statistic is called a sampling
   distribution.

example #1
 There are 10 students in a Statistics class, and each student is asked the question
“How long did you study yesterday?” The instructor is only interested in the responses of the
students in her class, so the 10 students in the class constitute a population. The responses (in
minutes) are shown here:

  Student	  Time spent on studying
	1	        35 min
	2		  60 min
	3		  29 min
	4		  45 min
	5		  30 min
	6		  10 min
	7		  90 min
	8		  55 min
	9		  25 min
	10		  100min

Question:
If we take a random sample of n=2 students, and calculate the sample mean, how
close is the sample mean to the population mean? Is it reasonable to use the sample mean to
estimate the population mean?
		E[x]=M
		E[x]=E[xi/n]
		E[x]=E[x1/n]
		E[x]=1/nE[x1]			## Theoretical Proof ##
		E[x]=1/nM
		1/n M + ..... + 1/n M
		M
In R:	(Bad Method)
time=c(35,60,29,45,30,10,90,55,25,100)	 ## Variable = "time" ##
mean(time) 						 ## Population mean ##
mysample=sample(time,2) 			 ## create variable with only 2 "time" values ##
mean(mysample) 					 ## mean between two "time" values chosen in mysample ##

## using this method is not advisable because we must look at the large picture. Via this method everyone
in class got different values due the the mysample choosing random values to calculate the mean from. ##

In R: (Better Method)

mysample = sample(time,2)
mean(mysample)
choose(10,2)
combn(time,2)					 ## Different possibilities of mysample ##
combinations=t(combn(time,2))			 ## Transpose of prior call, store as variable ##
means=apply(combinations,1,mean)		 ## Store mean values of all mysample combinations ##
mean(means) 					 ## Taking mean of all mean values from prior call ##

------------------------------------------------------------------------------------------------------------------

SECTION 6.2 SAMPLING DISTRIBUTION OF MEANS AND THE CENTRAL LIMIT THEOREM

Central Limit Theorem (CLT)

example #1
 A chemical engineer claims that the mean amount of a certain type of impurity
in the output of a chemical process is .3 gram per gram of output. It is known that the
standard deviation is 0.1 gram per gram. To check this claim the process is run on a lab
scale 50 times, and the sample average turns out to be .34 gram per gram. Does this sample
information appear to support the engineer’s claim?

a. What is the sampling distribution of Xbar if the population mean µ is .3 gram per gram
and standard deviation is 0.1 gram per gram?
	Since n = 50 > 30
	Xbar ~ N(.3, .1/sqrt(50) = 0.14)
	by CLT

b. If the population mean µ is .3 gram per gram, what is the chance that Xbar will deviate
from µ by as much as .04?
	Assume µ = .3
	P(Xbar > .34 or Xbar < .26)		## After this it is a Normal distribution Problem ##
	= 2 P(Xbar < .26)				## Can use 2 because they are both equal portions ##
	= 2 P(z < (.26-.3)/.014)		## Useing z chart convert Xbar to z)
	= 2 P(z < -2.86)
	= .004





