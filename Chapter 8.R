Chapter 8
One and Two Sample Tests of Hypotheses 
---------------------------------
|Section 8.1 Introduction	|
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
---------------------------------------------------------	
|Section 8.3 Two Samples: Tests on Two Means 		|
---------------------------------------------------------

1) Independent Sampling
Assumption:
	-Two samples are independent.
	-Population variance is unknown.
	-Either population in normal or sample size is large.
Hypotheses: H0 : 𝜇1 − 𝜇2 = D0		vs		H1 : 𝜇1 − 𝜇2 > (<, ≠) D0
	where D0 is the hypothesized difference between the means and it is usually equal to 0
			 t = ((𝑥̅1−𝑥̅2)−𝐷0) / √(S1^2/n1)+(s2^2/n2) ~ tv under H0.
example 1
 Each person in a random sample of 200 male teenagers and a random sample of 300
female teenagers was asked how many hours he or she spent online in a typical week. The
sample mean and standard deviation were 15.5 hours and 11 hours for males and 14.1 hours
and 11.2 hours for female.
	
	𝜇1: mean amount of hours spent online for males.		## population means that are unkown ##
	𝜇2: mean amount of hours spent online for females.
n1 = 200	𝑥̅1 = 15.5	S1 = 11    				## male ##
n2 = 300	𝑥̅2 = 14.1	S2 = 11.2				## female ##
	
a. Construct and interpret a 95% C.I. for the difference in mean number of hours spent on
line for male teenagers and female teenagers.
	95% C.I. for 𝜇1 - 𝜇2
(𝑥̅1−𝑥̅2) +- tv  √(S1^2/n1)+(s2^2/n2) 		## v ~ 200+300 -2 = 498 ##
(15.5 - 14.2) +- 1.964 √(11^2/200)+(11.2^2/300)
		(1.4+- 1.98)
	or	(-.58, 3.38)

b. At α = .05, carry out a test to determine if there is convincing evidence that the mean
number of hours spent online in a typical week is greater for male teenagers than for
female teenagers.
	H0:𝜇1 − 𝜇2 =0 , H1: 𝜇1 − 𝜇2 > 0			## D0 is set to 0 because we just need to know that it is greater ##
the t.s 	t = (1.4-0)/1.01 = 1.39
the rejection region: t > tv, .05 = 1.645
Fail to reject H0 at α = .05
	
## Note -  For hypotheses with 𝜇1 − 𝜇2 = 0, if the confidence interval for 𝜇1 − 𝜇2 contains 0, ##
## then it is possible for the difference between the population means to be 0. In this case, we ##
## cannot conclude there exists a significant difference between 𝜇1 and 𝜇2, that is, we cannot ##
## reject H0. On the other hand, if the C.I. for 𝜇1 − 𝜇2 does not contain 0, we can conclude there ##
## exists a significant difference between 𝜇1 and 𝜇2.	##

2) Paired Sampling
Assumptions:
	- Samples are paired
	- The n sample differences can be viewed as a random sample from a population of
	  differences.
	- Population variance is unkown
	- The number of sample differences is large or the population distribution of differences is
	  approximately normal.

Recall: Under the assumptions, the quantity t = (𝑥̅𝑑−𝜇𝑑) / (𝑠𝑑/√n) follows a t distribution with df = n-1,
	where 𝑥̅𝑑 and 𝑠𝑑 are the mean and standard deviation of the sample differences, and 𝜇𝑑 = 𝜇1 − 𝜇2.
	
	The Paired t Test about 𝜇𝑑:
	H0 : 𝜇𝑑= D0 vs H1 : 𝜇𝑑> (<, ≠) D0
test statistic t = (𝑥̅𝑑−𝐷0) / (𝑠𝑑/√𝑛)

example 1
Students are weighed (in kilograms) at the beginning and the end of a semester-long
health-fitness program. Let the random variable D equal the weight change for a student,
postweight minus preweight. Assume that the distribution of D is N(𝜇𝑑, σd). A random sample
of n=12 students yielded the following results: 𝑥̅𝑑= -.45, 𝑠𝑑= .1.
	
a. Construct a 95% C.I. for µd
	 𝑥̅𝑑= -.45	𝑠𝑑= .1	n = 12
(µ1 - µ2)
-.45 +- t * (.1/√12)
-.45 +- 2.201 (.1/√12)
-.45 +- .06 or (-0.51,-0.39)

b. Conduct a test at α =.05 to see if the program is effective?
	H1: µd < 0
	## We will reject H0 because our confidence interval does not contain 0. ##
test statistic t = (-0.45 -0) / (.1/√12) = -15.59
		the rejection region t < -tα,n-1
				     t < -1.796  

	

Test Review

R commander is a comprehensive suite of functions for R
>To install
install.packages("Rcmdr", dependencies = TRUE)

>To open
library("Rcmdr")

Example HW Problem R Code
P283 #11

x=1.006
s=.0245
n=9

A %99 c.i for u is
1.006 +- ta/2,n-1(.0245/(sqrt(9)))
1.006 +- 3.355 (.0245/(sqrt(9)))
1.006 +- .027
(.979, 1.033)

Point estimate would be 1.006

If asked to decrease the width of the confidence interval by half
n = (((za/2)s)/SE)^2
  =(2.575(.0245))/.0133) SE = ((1.033-1.006)/2) <--- to half the SE for the interval find the distance between the x and upperbound and divide by 2

Script:
diameter=c.(1.07,.97,1.03,1.04,.99,.98,.99,1.01,1.03)
mean(diameter) <---- 1.00556
sd(diameter) <---- .02455153
t.test(diameter, alternative="two.sided",conf.level=.99) <---- no z test in r, alternative="two-sided" represents the confidence , conf.level sets which confidence level
                                                                    you want, can also set confidence interval to greater or less, you can also add mu after alternative

Pg 295 #45?
Paired design (two varieties from the same university)


Script:
x1=c(38,23,35,41,44,29,37,31,38)
x2=c(45,25,31,38,50,33,36,40,43)
t.test(x1,x2,alternative="two.sided",paired=T)
t.test(x1,x2,alternative="two.sided",mu=0,paired=T) <---alt hypothesis: true difference in means is greater than 0

95% confidence interval for mu1-mu2
(-6.2955948,0.7400393)

95% confidence for mu=0
-5.614525


More script for differences <--- if asked on the test you need this
d=x1-x2
mean(d)
sd(d)

xd = -2.78 <---- mean of sample
sd = 4.58 <---- standard deviation of sample

A 95% c.i for mu1-mu2(=md)
-2.78+-ta/2,n-1(4.58/sqrt(9))
-2.78+-2.306(4.58/3)
-2.78+-3.52
(-6.2, .74) <---- very close to t.test except differences due to rounding errors


Another example
x1=36300 s1 = 5000, n1 = 12
x2=38100 s2 = 6000, n2 = 12
A 95% c.i. for m1-m2
(x1 - x2) +- ta/2v(sqrt(s1^2/n1 + s2^2/n2)) <----- v1 = s1^2/2  v2 s2^2/2 v=(v1+v2)/(v1^2/n1-1 + v2^2/n2-1)

	
	
	
	
	
