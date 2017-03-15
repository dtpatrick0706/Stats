## Chapter 5 ##
Section 5.1 The Uniform Distribution

The uniform distribution is a rectangular distribution with constant probability and implies that
the probability of falling in an interval of same length is constant.

example #1
Suppose the amount of gasoline sold every day at a service station is uniformly
distributed with a minimum of 1000 gallons and a maximum of 2000 gallons.

In R:
dunif(x,min,max)
punif(x,min,max)


Section 5.2 Normal Distribution

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
The “fill” problem is important in many industries, such as those making cereal,
toothpaste, and so on. If an industry claims that it is selling 12 ounces of its product in a
container, it must have a mean greater than 12 ounces, or else the FDA will crack down,
although the FDA will allow a very small percentage of the containers to have less than 12
ounces. If the content X of a container has a normal distribution with mean 12.1 ounces and
standard deviation .04 ounces, what percentage of the containers will be acceptable?

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
	P(x<x)=.25 second x is unkown now and we are given probability
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

Section 5.3 The Exponential Distribution

The exponential distribution describes the time we need to wait before a given event occurs. 
t(x;B) = 1/B * e ^-(x/B)    x>0
	mean = B    variance = B^2
	cdf = P(x < ??) = integral of 1/B * e^-(t/B) dt
	simplified to   = 1-e^-(x/B)

example #1
Assume that the length of a phone call in minutes is exponentially distributed with mean time 
B = 5 minutes. If someone arrives at a phone booth just before you arrive, find the probability 
that you will have to wait

a. less than 3 minutes.
	x = waiting time (duration of phone call)
	x ~ exp(x;5)
	F(x) = 1- e^-(x/5), x>0  P(x<3)
	F(3) = 1-e^-(3/5)

In R:
dexp(x, rate)

b. more than 6 minutes.
	x= waiting time (duaration of phone call)
	P(x>6)
	 = 1 - P(x<6)
	 = 1 - F(6)
	 = 1 - [1-e^-(-6/5)
	 = e^-(1.2)

In R:
pexp(q,rate)




