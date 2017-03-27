Chapter 8
One and Two Sample Tests of Hypotheses 

Section 8.1 Introduction
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
------------------------------------------------------------------------------------------------------
Section 8.2 Single Sample: Testing a Population mean

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
| 			Rejection Region					|
|-------------------------------------------------------------------------------
|	 |	Upper-tailed 	|  Lower-tailed    |	Two-sided		|
|α = .01 |      z > 2.33        |     z < -2.33    |	z > 2.575 or z < -2.575 |
|α = .05 |      z > 1.645       |     z < -1.645   |	z > 1.96 or z < -1.96   |
|α = .1  |      z > 1.28 	|     z < -1.28    |	z > 1.645 or z < -1.645 |
---------------------------------------------------------------------------------



   


