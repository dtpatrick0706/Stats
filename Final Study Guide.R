Final Study Guide:

Chapter 1: 
-	Mean - Mean is the average value of the data, which is found by adding up the values of the observations and dividing by the 
  number of observations.
-	The Median is the middle observation (once they are arranged in order) or the observation which divides the observations such that 
  50% fall below it and 50% fall above it.
      o	If the number of values in a data set is odd, then median is the middle point of the ordered data set. 
      o	If the number of values in a data set is even, then median is the average of the two middle observations of the ordered 
        data set.
-	Box Plots A boxplot is based on measures that are resistant to the presence of a few outliers--- median and the interquartile 
  range (IQR, upper quartile – lower quartile).
      o Outliers –are extremely high or extremely low data values that fall well outside the overall pattern of the data. Identify 
        outliers numerically: An observation farther than 1.5×IQR from the closest quartile is an outlier; that is, any observation 
        that is lower than the lower fence or higher than the upper fence is an outlier. Lower fence = lower quartile– 1.5×IQR, Upper 
        fence = upper quartile + 1.5×IQR.
-	Stem and Leaf Plot – A plot where each data value is split into a "leaf" (usually the last digit) and a "stem" (the other digits).
  For example "32" is split into "3" (stem) and "2" (leaf). The "stem" values are listed down, and the "leaf" values are listed 
  next to them.

Chapter 3:
The Probability distribution or probability mass function (pmf) of a discrete random variable X, denoted by the symbol f(x), 
specifies the probability of observing every possible value of x of the random variable. The pmf f(x) satisfies the following 
properties:

a.	 f(x) ≥ 0, for all values of x. 
b.	 ∑ 𝑓(𝑥) = 1, where the summation of f(x) is over all possible values of x. 
c.	 𝑃(𝑋 = 𝑥) = 𝑓(𝑥).

Cumulative Distribution Function
F(x)=P(X<=x)=Summation(f(t)), for -infinity < x < infinity

Probability Density Distribution(pdf)
P(a<= X <=b)=Integral(f(x)dx), for -infinity < x < infinity
dnorm(x, mean, standard deviation)

Cumulative Distribution Function(cdf)
F(x)=P(X=x)=Integral(f(t)dt), for -infinity < x < infinity
pnorm(q, mean, Standard deviation) 

Chapter 5: 

example #1
People with IQ between 115 and 140
p(115 < x < 140)
P(x<140)-P(x<115)
  so enter pnorm(140,100,16)-pnorm(115,100,16) = 0.168
mean = 100, standard deviation = 16
x = standard deviaton
In R: 
pnorm(140,100,16) - pnorm(115,100,16) = 0.168

example #2
The “fill” problem is important in many industries, such as those making cereal, toothpaste, and so on. If an industry 
claims that it is selling 12 ounces of its product in a container, it must have a mean greater than 12 ounces, or else the 
FDA will crack down, although the FDA will allow a very small percentage of the containers to have less than 12 ounces. If the 
content X of a container has a normal distribution with mean 12.1 ounces and standard deviation .04 ounces, what percentage of 
the containers will be acceptable?

x~N(x;12.1,0.04^2)
P(x>12)= P(z>(12-12.1)/.04 = -2.5)
       = 1-P(z<-2.5) = 1-0.0062 
       = 0.9938
In R:
1-pnorm(12,12.1,.04)
	USING NORMAL CURVE IN REVERSE
example #1 
Give a normal distribution with ?? = 20, and ?? = 2,find the value of x that has
a. 25% of the area to the left and (Find a z value with an area of 0.25 to the left)
	P(x<x)=.25 second x is unknown now and we are given probability
	P(z<(x-20)/2)=0.25
	From chart find that z= -0.67
	Convert the z-value to its corresponding x value
	x = 20 + 2 * (-0.67) = 18.66
In R:
qnorm(Given probability, mean, standard deviation)
qnorm(0.25,20,2)
b. 5% of the area to the right (Find a z value with an area of 0.95 to the left)re
	Look up 0.95 on the chart(average between two closest values) z= 1.645
	x = m + z S
	x =20 + 1.645 (2) = 23.289
In R:
qnorm(.95,20,2)
example #2
Find the 80th percentile of IQs.(0.8 to the left 0.2 to the right)
x~N (x; 100,16^2)
z = 0.84
x = 100 + 0.84 *16
  = 113.466
In R:
qnorm(.80,100,16)


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

Section 7.3 Two- Sample 

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

------- ## Note ## ------------------------------------------------------------------------------------------------------------------ 
	When n1 and n2 are large (>= 30) V ~ n1 + n2 -2    ## Just an approximation ##
	In above Example, V ~ 36 + 49 -2 = 83
	In R:
		qt(.975 , 83) = 6.98896   		## Very close to our exact answer from earlier ##
-------------------------------------------------------------------------------------------------------------------------------------
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
  
Chapter 8
One and Two Sample Tests of Hypotheses 
---------------------------------
|Section 8.1 Introduction	      |
---------------------------------

1.) A statistical hypothesis is a statement/claim about a population parameter.
	- The null hypothesis is denoted by H0 and it is usually stated as
	  H0 : parameter = a specific value. For example, H0 : µ = 450.
	- The alternative hypothesis is a statement about the parameter that contradicts the null
	  hypothesis. It is denoted by H1, and it is always specified as strict inequalities, such as
	  >, < , ?.

example 1
A growing concern of employers is time spent in activities like surfing the
Internet and e-mailing friends during work hours. According to an article “Who Goofs Off 2
Hours a day? Most Workers, Survey Says” in San Luis Obispo Tribune that the average
wasted time during an 8-hour work day is 2 hours. Suppose that the CEO of a company wants
to know if the average wasted time for his employees is more than the reported 2 hours. 
		
		## Steps for selecting the null and alternative hypotheses. ##
	
	- Select the alternative hypothesis as that which the sampling experiment is intended to
	  establish. The alternative hypothesis has one of the three forms.
		H1 : µ > value (upper/right-tailed test)				
		H1 : µ < value (lower/left- tailed test)			## H0 is always equality sign ##
		H1 : µ ? value (two- tailed test or two sided test)

		H0 = 120	H1 = µ > 120

	- Select the null hypothesis which usually has the form µ = value.
	
Suppose a random sample of 32 employees was selected and each person was asked about
daily wasted time at work. The mean wasted time of these 32 workers was found to be 135
minutes.

		n = 32	 X = 135min

2.) A test statistic is a function of the sample data and is used to decide whether the null
    hypothesis should be rejected.

3.)The rejection region is an interval or set of numbers specified such that if the value of the test
   statistic lies in the rejection region, then the null hypothesis is rejected.

4.) Errors in Hypothesis Testing 
	- Type I error is the error of rejecting H0 when it is in fact true. The probability of a 
	  Type I error is denoted by a
	- Type II error is the error of failing to reject H0 when it is in fact false. The probability 
	  of a Type II error is denoted by ß.
		## Reject H0  - Type I error  Fail to reject H0 - Type II error ##

------------------------------------------------------------------------------------------------------
In class example

Population = 35
reject region = X >130
	a = P(Type I error)
	  = P(reject H0 | H0 is true)
	  = P(X > 130 | µ =120)			## If µ = 120, then X ~ N (120, 35 / sqrt(32)) ##
	  = P(Z > (130-120)/(35/sqrt(32))) 
	  = .0526

	  = P(Type II error)
	  = P(Fail to reject H0 | H0 is false)
	  = P(X < 130 | µ = 135) 		## Pick a number out for µ, false will be < ##
	  = P(Z < (130-135)/(35/sqrt(32)))

## See graph in notes for better explanation on µ & B ##
## Type I error is typically considered worse than Type II error in real word application ##

NOTE:
	- Hypotheses should always be written as statements about the population parameters and not
	  statistics, so the symbol used should reflect this.		## Always about population perameters not X ##
	- The decision is always worded in terms of the null hypothesis, “reject H0” or “fail to reject
	  H0”. The conclusion is always worded in terms of the alternative hypothesis, “sufficient evidence to 
	  support H1” or “insufficient evidence to support H1”		## Answer is always worded in terms of H0. Decision is ##
									## either reject or fail to reject. Then conclusion ##
	- In hypotheses testing, we will never accept the null hypothesis being true.

---------------------------------------------------------
|Section 8.2 Single Sample: Testing a Population mean	|
---------------------------------------------------------
	
	Null Hypothesis : H0: µ = µ0
1.) The case of 𝝈 known
	"Critical Method": 
	- Test Statistic Z = (𝑥̅−µ)/(𝝈√𝑛) where 𝑥̅ is the sample mean, n is the sample size, µ0 is the
	symbol for the numerical value assigned to µ under H0.
	
	"Rejection Region"
-------------------------------------------------------------------------		
|Alternate Hypothesis H1	|		Rejection Region	|
-------------------------------------------------------------------------
|	µ > µ0			|		     z ≥ zα		|
|	µ < µ0			|		     z ≤ -zα		|
|	µ ≠ µ0			|	       z > zα/2 or z < -zα/2	|
-------------------------------------------------------------------------
--------------------------------------------------------------------------------
| 				Rejection Region				|
|-------------------------------------------------------------------------------
|	 |	Upper-tailed 	|  Lower-tailed    |	Two-sided		|
|α = .01 |      z > 2.33        |     z < -2.33    |	z > 2.575 or z < -2.575 |
|α = .05 |      z > 1.645       |     z < -1.645   |	z > 1.96 or z < -1.96   |
|α = .1  |      z > 1.28 	|     z < -1.28    |	z > 1.645 or z < -1.645 |
---------------------------------------------------------------------------------

example 1
Suppose a random sample of 32 employees was selected and each person was
asked about daily wasted time at work. The mean wasted time of these 50 workers was found
to be 135 minutes. Assume that the daily wasted time of employees has a normal distribution
with σ = 35 minutes. At α = .05, can it be concluded that the mean wasted time of the
employees from this CEO’s company is more than the reported 120 minutes? What is β(130),
the probability of a Type II error when µ = 130?

X = 135 	n = 32 		𝝈 = 35
Step 1) H0: µ =120, H1: >120
Step 2) Z = (135-120)/(35/sqrt(32)) = 2.42
Step 3) rejection region is: Z > 1.645
Step 4) Reject H0 at α = .05 Since the test statistic falls into the rejection region.
	## Conclusion - Sufficient evidence to conclude that the mean wasted time of all employeees is more ##
	## than two hours ##
		
example 2
A magazine article stated that the average age of women who are getting married
for the first time is 28 years. A researcher believed that the average age should be younger
than 28. To test the claim, she selected a sample of 35 women who were recently married for
the first time and found the average was 27.1 years. Suppose that the population distribution is
normal with a standard deviation 3.2 years. At α = .1, is the average age really less than 28?

X = 27.1 	n = 35		𝝈 = 3.2	α = .1
Step 1) H0: µ = 28, H1: µ < 28
Step 2) The test statistic Z = (27.1 - 28)/(3.2/sqrt(35)) = -1.66
Step 3) Rejection region is Z < -1.28
Step 4) Reject H0 at α = .1
   	## Conclusion - Suffieicent evidence to support the researchers claim that the average age is younger ##
	## than 28 years ##

2.) The case of 𝝈 unknown
When either n is large or the population distribution is approximately normal, to test H0 : µ = µ0
	The test statistic is t= (𝑥̅−𝜇0)/(𝑠/√n) ~ tn-1
where 𝑥̅ is the sample mean, n is the sample size, µ0 is the symbol for the numerical value
assigned to µ under H0
	
			C-V method		p-value
H1: 𝜇 > 𝜇0	  	  t > tn-1, α		  P(tn-1>t0)
H1: 𝜇 < 𝜇0 	  	  t <- tn-1,α		  P(tn-1<t0)
H1 : µ ≠ µ0     	t > tn-1,α/2 or t < - tn-1,α/2

example 1
An automobile manufacturer who wishes to advertise that one of its models achieves
30 mph decides to carry out a fuel efficiency test. 40 nonprofessional drivers are selected, and
each one drives a car from Chicago to Los Angeles. The test results in a mean fuel efficiency
of 30.4 mph and a standard deviation of 2.2 mph.. At α = .05, do the data support the claim
that the true average fuel efficiency is at least 30 mph.

X = 30.4, S = 2.2, n = 40					c- v method
H0: 𝜇 = 30	H1: 𝜇 > 30					  Rejection region: t > t39.05 = 1.684    ## T chart (40, .05)
								1.15 < 1.684 therefore we fail to reject H0 at  α = .05.
the test statistic t= (30.4 -30) / (2.2/√40) = 1.15		## Insufficient evidence to support the claim that the mean fuel ##
								## efficiency is at least 30 mph ##
P - value method
p-value = P(t39 > 1.15)
.1 < P(t40 > 1.15) < .15		## Our value lies between .1 and .15 on the t chart ##
	in R: 1 - Pt (1.15, 39) = .1286

Chapter 9 Goodness-of-Fit Tests and Categorical Data Analysis

Section 9.1 Goodness-of-Fit Tests

example 1
Is it a fair coin? To test if a coin is fair, we toss the coin 100 times and observe that it landed on heads 39 times.
Do these data suggest that the coin is fair? H0: p0 = p1 =.5 H1: At least one probability differs from .5
p0: probability of getting heads; p1: probability of getting tails

H0: P = 0.5             H1 ≠ 0.5                  ## Start with H0 as what needs to be investigated
p = proportion of heads (tails)                   ## H1 will follow after

Hypothesis:
H0: P1 = P2 = 0.5       H1: at least one Pi ≠ 0.5
P1 = Heads
P2 = Tails

-------------------------------------------
|  Category     |   Heads    |   Tails    |   ---> One Way Table
-------------------------------------------
|  Observed (O) |    39      |    61      |                         O     18        90
-------------------------------------------                         ------------------------- ## Even though the difference is both 8
| Expected (E)  |    50      |    50      |                         E     8         82        ## The first is 80% higher then expected
-------------------------------------------                         ------------------------- ## In this case we look at the relative   
| ( O - E )^2/E | (-11)^2/50 |  (11)^2/50 |                         O-E   8         8         ## magnitude because it is more informative    
-------------------------------------------                              80%       9.8%

The test statistic X^2 = ((39 -50)^2 /50) + ((61-50)^2 /50)
                       =   4.84
Rejection Region is 3.84        ## found in R
r.r.: X^2 > 3.84 
Reject H0

example 2
Consider a standard package of milk chocolate M&Ms. There are six different colors: red, orange, yellow, green, blue and brown. 
Suppose we wish to know if the color is distributed evenly in a package. A random sample of 600 M&Ms yields the follow results:
  
 H0: P1=P2=P3=P4=P5=P6= 1/6       H1: At least one Pi is different from 1/6
 Variable: color
  Category: Red; Orange; Yellow; Green; Blue; Brown
  --------------------------------------------------------------------------------
  | Category    |    Red   |   Orange  |   Yellow  |  Green  |  Blue   |  Brown  |
  --------------------------------------------------------------------------------
  | Observed(O) |    50    |     46    |     80    |   120   |   150   |   154   |  ## Should reject auomatically as Values vary greatly
  --------------------------------------------------------------------------------
  | Expected(E) |    100   |    100    |    100    |   100   |   100   |   100   | ## 600 total /6 leaves expected as 100 each
  --------------------------------------------------------------------------------
  
Theorem:  Suppose a multinomial experiment has k possible outcomes. Let Ni be the number ofresults falling into category i, 
and ∑ 𝑁𝑖 = 𝑛. If npi ≥ 5 for all i = 1,…,k, then the variable
  ∑(𝑁𝑖−𝑛𝑝𝑖)^2/ 𝑛𝑝i =  ∑𝑒𝑥𝑝𝑒𝑐𝑡𝑒𝑑 𝑎𝑙𝑙 𝑐𝑒𝑙𝑙 (𝑜𝑏𝑠𝑒𝑟𝑣𝑒𝑑−𝑒𝑥𝑝𝑒𝑐𝑡𝑒𝑑)^2/𝑒𝑥𝑝𝑒𝑐𝑡𝑒𝑑
  has approximately a chi-squared distribution with k -1 df
  
A chi-square goodness-of-fit test, in general, measures how well do the observed data correspond to the assumed model. 
It can be used for testing if a qualitative variable has aspecific distribution.
  
 Hypothesis:
  H0: P1 =.....P6 = 1/6     H1: At least one Pi is ≠ 1/6
  
  The T.S. is X^2 = 116.32                ## found via same method as above
  
  The r.r. is X^2 > X^2 5,.05 = 11.071    ## degrees of freedom is 5 
  Reject H0 at α = .05
 

Section 9.2 Tests for Homogeneity and Independence in a Two-Way Table
  
  1. Chi-Squared Test of Homogeneity
This test is applied to a single categorical variable from two or more populations. It is used to determine whether 
frequency counts are distributed identically across populations.
  
 example
  In a study of living conditions for college students, 450 undergraduate students were selected and classified 
 according to class standing and living conditions. Use the data in the table to determine if the proportions 
 falling into each of the four response categories are not the same for students with different class standing.
  
2. A chi-squared independence test
A chi-squared independence test is used for investigating association between two
categorical variables in a single population.
  
example
 A researcher randomly selected 1000 death certificates and found the following information about the deceased:
  
---------------------------------------------------------------------------------------
|  Smoking Habits |                   Cause of Death              |     Row Total     |
|                 |-----------------------------------------------|                   |
|                 |     Cancer    |   Heart Disease   |   Other   |                   |
---------------------------------------------------------------------------------------
|  Smoker         |      145      |        300        |    205    |         650       |
---------------------------------------------------------------------------------------
|  NonSmoker      |       50      |        160        |    140    |         350       |
---------------------------------------------------------------------------------------
| Column Total    |      195      |        460        |    345    |        1000       |
---------------------------------------------------------------------------------------
  
  At a significance level of 5%, do these data show that smoking and cause of death are dependent?

  H0 = independent            ## for chi squared independent test hypothesis is always equal to this
  H1 = dependent
  
  The Test Statistic:
         χ2 = ∑ (o-e)2 / e    =     (650/1000) x (195/1000)
         P( Smoker ∩ Cancer )             ## Expected number of smokers who died of cancer = 1000 x  (650/1000) x (195/1000)
         = P(Smoker) x P(Cancer)
  
  smoker cancer = 126.75
  smoker Heart Disease = 299
  Smoker Other = 224.25
  Non Smoker Cancer = 68.25
  NonSmoker Heart Disease = 161
  NonSmoker Other = 120.75
            = (145 - 126.75)2 / 126.75 +..... + (140-120.75)2 / 126.75
            
        Value of Test statistic = 12.2385
  
    The rejection region is 𝜒2 > 𝜒(.05)(2)
      𝜒2 > 5.991
     Reject H0 at 𝛼 = 0.05 
     Sufficient evidence to say that the two variables are dependent
  
  example 8.5
  A researcher wishes to determine whether there is a relationship between the gender of an individual and the 
  amount of alcohol consumed. A sample of 68 people is selected, and the following data are obtained.
  
  
                     Alchol Consumption
  Gender      Low       Moderate      High      Total
  -----------------------------------------------------
  Male      10(9.13)      9(9.93)     8(7.94)     27
  Female    13(13.07)    16(15.07)   12(12.06)    41
  -----------------------------------------------------
  Total       23           25          20         68
  
  At α =.10, can the researcher conclude that alcohol consumption is related to gender?
  
  H0: Independent                 ## Variables are Gender and Alchol Consumption  ##
  H1: Dependent
  
  Test Statistic: 
            χ2 = ∑ (o-e)2 / e = .028275       ## small test statistic typically means agree with H0 ##
  
  The Rejection Region:
             𝜒2 >  𝜒2 (.1,2) = 4.60517
         
            Fail to reject H0 at 𝛼 = .10 Therefore Insufficient evidence to say that alchol consumption is 
            related to gender.

Chapter 10


1. Introduction
Example 1: The following table displays data on a customer’s restaurant bill and
the customer’s tip from 6 customers.

-----------------------------------------------------------------
|   Customer    |   1   |   2   |   3   |   4   |   5   |   6   |
-----------------------------------------------------------------
|   Bill x      | 33.45 | 38.94 | 45.54 | 50.68 | 63.60 | 65.78 |
-----------------------------------------------------------------
|   Tip y       | 4.00  | 4.50  | 8.95  | 9.50  | 10.00 | 11.02 |
-----------------------------------------------------------------

1) Identify Variables in SLR
      Independent variable - also called an explanatory variable or a predictor
      variable, which is used to predict the dependent variable.
      Dependent variable – also called a response variable.
2) Scatter Plot for SLR
       A scatter plot is a two-dimensional plot, with values of the dependent
       variable plotted along the vertical axis and values of the independent
       variable along the horizontal axis.
    - Describe the pattern of points as they appear on a scatter plot:
        o A positive linear relationship exists if points fall approximately on a straight line and both variables increase or 
          decrease at the same time.
        o A negative linear relationship exists if points fall approximately on a straight line and as one variable increases, 
          the other variable decreases, or vice versa.
        o No relationship exists if there is no discernable pattern of the points
   The scatter plot can be used as a diagnostic tool.






















