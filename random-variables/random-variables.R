################################################
#########  Discrete Random Variables
################################################

# choose a random number in R
sample(1:10, 1)
sample(1:10, 10)

sort(sample(1:10, 10))

sample(10:1,1)
sample(10:1.5,1)
sample(2:1.5,1) 
sample(0,0,1)
sample(1:10, 11, replace=T) 
table(sample(1:10, 100, replace=T))

# what is the average number of -mes a value is sampled?
mean(table(sample(1:10, 100, replace=T)))
mean(sample(1:10, 100, replace=T))
table(sample(1:10, 1000, replace=T)) 
table(sample(1:10, 1000000, replace=T))


# What’s the varia-on here?
sd(sample(1:10, 1000, replace=T))
var(sample(1:10, 1000, replace=T))

################################################
#########  run if ()
################################################

# Generate a random number between 5.0 and 7.5
runif(1, 5.0, 7.5) 
runif(100, 5.0, 7.5)
min(runif(1000, 5.0, 7.5))   # display the minimum
hist(runif(100000,5.0,7.5))  # display the frequency of number as histogram

################################################
#########  Binomial distribution
################################################

# Suppose there are 12 multiple questions in a quiz. 
# Each questions has 5 possible answers, and only 1 of them is correct. 
# Find the probability of having 4 or less correct answers if 
# a student attempts to answer every questions at random. 

dbinom(4, size=12, prob=0.2)

# To find the probability of having four or less correct answers by random attempts, 
# we apply the function dbinom with x = 0,…,4.
dbinom(0, size=12, prob=0.2) + 
+ dbinom(1, size=12, prob=0.2) + 
+ dbinom(2, size=12, prob=0.2) + 
+ dbinom(3, size=12, prob=0.2) + 
+ dbinom(4, size=12, prob=0.2) 

