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
 

  
  
  
  
  
  
