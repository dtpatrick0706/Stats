Chapter 3 Random Variables and Probability Distributions

SECTION 3.1 RANDOM VARIABLES

Definition: If S is a sample space and X is a real-valued function that associates a real number with
each element in S, then X is called a random variable. 

Note: We use a capital letter, say X, to denote a random variable and its corresponding lower case, x in
this case, to denote one of its values.

example #1
1.) Toss a coin twice.Define a random variable X as the number of heads. Then, X=2 for the
outcome HH, and X=1 for the outcome HT.

2.) 2. Roll a pair of fair dice once.
	X = the sum of numbers of dots on the upper faces of the two dice
	Y = the difference of numbers of dots on the first die and the second die 

Definition: A random variable is a discrete random variable if its set of possible outcomes is
countable; and a random variable is a continuous random variable if the variable can take on values
on a continuous scale.

SECTION 3.2 DISCRETE RANDOM VARIABLES 

Probability Distribution

The Probability distribution or probability mass function (pmf) of a discrete random variable X,
denoted by the symbol f(x), specifies the probability of observing every possible value of x of the
random variable. The pmf f(x) satisfies the following properties:

	a. f(x) = 0, for all values of x.
	b. ? f(x) = 1, where the summation of f(x) is over all possible values of x.
	c. P(X = x) = f(x).

example #1
 Consider the experiment of tossing a coin twice, and let X represent the number of
heads observed. Find the probability distribution of the random variable X.

example #2
 Roll a fair three-sided dice twice, and let X equal the maximum of the two
outcomes. Give the probability distribution of X.

example #3 
 If f(x) is a p.m.f., find the value of c if f(x)=c/3 x, fo x = 1,2,3.

SECTION 3.3 CONTINUOUS RANDOM VARIABLES 

Probability Density Distribution

For a continuous random variable the probability distribution of probability density function (pdf)
is a function f(x) such that 
	P(a<=X<=b) Integreal(F(x) dx), for any two numbers a, b such that a<=b
	f(x) >= 0 for all x
	The total area under the curve is equal to 1, that is Integral(f(x) dx = 1)
		Probability density is not probability

example #1
Let X be the duration of a telephone call in minutes and suppose X has pdf:
 f(x) = c * e^(-x/10) for x>=0
	a. Find c so that f(x) is a valid density function

	b. Find the probability that the call last less than 5 minutes.

The Cumulative Distribution Function

The Cumulative distribtuion function (cdf) F(x) of a continuous random variable X with pdf
f(x) is defined as:
	F(x) = P(X<=x) = Integral(f(t)dt), for -infinity <x<infinity.
	For each x, F(x) is the area under the density curve to the left of x. 

Note: If a continuous random variable X has a pdf f(x) and cdf F(x) then,
	P(X>a) = 1 - F(a), for any number a.
	P(a<X<b) = F(b)-F(a), for any two numbers a and b with a<=b
	F'(x)=f(x) at every x at which the derivative exists.

example #2
A continuous random variable X has a density function
f(x) = 3/2 x^2, -1<=x<=1, 0 otherwise 	