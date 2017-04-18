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
            
          
  
  
  
  
  
  
  
  
  
  
