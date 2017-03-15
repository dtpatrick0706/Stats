#Combinations
choose(n,k)

#Binomials
dbinom(vector of quantiles,number of items,probability of success)

#Hyper
dhyper(x,m,n,k) also written in words as
dhyper(number of successes in sample,number of successes in population,number of failures in pop,number of samples)

#Poisson
dpois(x;lambda)

#Correlation and Etc

x=c()
y=c()
plot(x,y) 						#can add main+, xlab=, or ylab=
name=paste("title",range:range)
output=lm						#this for slope and y-int
abline(output, col="green")			#this for regression line
text(x,y,name,pos=3,cex=.5,col="red")
legend("bottom right",paste("cor=",cor(x,y)))
cor(x,y)						#this for correlation strength

Ex 1

x=c(0,0,0,15,15,15,30,30,30,45,45,45,60,60,60,75,75,75)
y=c(8,6,8,12,10,14,25,21,24,31,33,28,44,39,42,48,51,44)
plot(x,y)
output=lm(y~x)
abline(output, col="red")
cor(x,y)

Ex 2

x=c(77,50,71,72,81,94,96,99,67)
y=c(82,66,78,34,47,85,99,99,68)
plot(x,y)
abline(lm(y~x))
result=lm(y~x)
summary(result)		#use to find residuals 
anova(result)		#finds sum sq residuals or SSE and SSR (sum sq x)



#Chapter 9 and 10
Sxy=(SIGMA)xy-[(SIGMAx)(SIGMAy)/n]
Sxx=(SIGMA)x^2-[(SIGMAx^2)/n]
Syy=(SIGMA)y^2-[(SIGMAy^2)/n]
Bet 1 hat = Sxy/Sxx, aso it is the slope 
B0 hat is y bar – b1 hat times x bar
Yhat=Beta0hat+Beta1hat times x
SSE=SIGMA(y-yhat)^2
sigma^2=SSE/(n-2)

#The regression line is y bar= Beta0hat + Beta1hat times (x)
#For X replace with some number (47…the bill) which yields 7.44
#Since beta1hat is .21 it means the average tip is expected to increase by $.21 for every additional dollar
#For what is this meaningful? Look at range of x…[33.45, 65.78]
#Sigma squared = SSE/n-2   if not divided by n-2 it is biased
