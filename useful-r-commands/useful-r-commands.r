################################################
######### R as a Calculator 
################################################

# Simple Arithmetic
1+1 

# Operator precedence
2+3*4 

# Exponentiation
3^2 

# Exponential Function
exp(1) 

# Calculate Square Root
sqrt(10) 

# Calculate Square Root
pi 


################################################
######### R as a Smart CalculatorCalculator 
################################################

# define variables and using "<-" operator to set values
x <-1 
y <-3
z <-4
x * y * z

# variable names can include period
This.Year <- 2004
This.Year

################################################
#########  R Vectors
################################################

# rep() to repeat elements or patterns
# repeats the number 1 ten times
rep(1,10) 


# seq() or m:n to generate sequences
seq(2,6)        # sequence of integers between 2 and 6
seq(4,20,by=4)  # skip 4 integer between 4 and 20


# c() to combines multiple values into a vector or list.
x <-c (2,0,0,4)     # create vector with elements
y <-c (1,9,9,9)
x + y               # sums elements
x * 4               # multiplication
sqrt(x)             # sqrt()

################################################
#########  Indexing
################################################

x <-c (2,0,0,4)     # create vector with value
x[1]                # index first value of x
x[-1]               # index all value exclude the 1st element of x
x[1] <- 3; x        # reassign value by indexing
x[-1] = 5; x        # reassign all value exclude the 1st element of x


################################################
#########  TRUE OR FALSE
################################################

y <-c (1,9,9,9); y      # create vector with value
y < 9                   # check true or false
y[4] =1; y; y < 9       # reassign value to check true or false
y[y<9] = 2; y           # Edits elements marked as TRUE in index

################################################
#########  Data Frames 
################################################

# Data Input read.table
read.table (file, header = FALSE, sep = "", quote = "\"'",
            dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
            row.names, col.names, as.is = !stringsAsFactors,
            na.strings = "NA", colClasses = NA, nrows = -1,
            skip = 0, check.names = TRUE, fill = !blank.lines.skip,
            strip.white = FALSE, blank.lines.skip = TRUE,
            comment.char = "#",
            allowEscapes = FALSE, flush = FALSE,
            stringsAsFactors = default.stringsAsFactors(),
            fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)

# Data Input read.csv
read.csv (file, header = TRUE, sep = ",", quote = "\"",
          dec = ".", fill = TRUE, comment.char = "", …)

# Data Input read.csv2
read.csv2 (file, header = TRUE, sep = ";", quote = "\"",
           dec = ",", fill = TRUE, comment.char = "", …)

# Data Input read.delim
read.delim (file, header = TRUE, sep = "\t", quote = "\"",
            dec = ".", fill = TRUE, comment.char = "", …)

# Data Input read.delim2
read.delim2 (file, header = TRUE, sep = "\t", quote = "\"",
             dec = ",", fill = TRUE, comment.char = "", …)

# Data Input from scratch data.frame()
df <- data.frame (Name =c('Jon','Bill','Maria','Ben','Tina'),   # template 1
                  Age =c(23, 41, 32, 58, 26))
print(df)


Name <- c('Jon','Bill','Maria','Ben','Tina')                    # template 2
Age <- c(23, 41, 32, 58, 26)
df <- data.frame(Name, Age)
print (df)

# retrieve column in Data Frame
df['Name']                                                      # df['<column_name>'] to retrieve column  
df$Name                                                         # df$<column_name> to retrieve column
df[,2]                                                          # df[row,column] to retrieve column 
df[,-2]

################################################
#########  Control Statements 
################################################
# if … else … 
# for loops
# repeat loops
# while loops
# next, break statements

# if 
x <- 5
if (x > 0) 
{
  print('Positive number')
}

# if … else … sample 1
if (test_expression) 
{
  statement1
} else 
{
  statement2
}

# if … else … sample 2
x <- -5
if (x > 0) 
{
  print('Positive number')
} else 
{
  print('Negatitve number')
}


# for Loop
# sample 1 Loop Through Vector in R (Basics)
for(i in 1:10) {
  x1 <- i^2       
  print(x1)        
}

# sample 2 Looping Over Character Vectors
x <- c("Max", "Tina", "Lindsey", "Anton", "Sharon")      
for(i in x) {                            
  print(paste("The name", i, "consists of", nchar(i), "characters."))
}

# sample 3 Store for-Loop Results in Vector by Appending
x <- numeric()      
for(i in 1:10) {                                         
  x <- c(x, i^2) 
}
print(x) 

# sample 4 Nested for-Loop in R
x <- character()      
for(i in 1:5) {                                     
  for(j in 1:3) {                                         
    x <- c(x, paste(LETTERS[i], letters[j], sep = "_"))  
  }
} 
x

# sample 5: Break for-Loop Based on Logical Condition
for(i in 1:10) {                          
  x <- i^2                                                
  print(x)                                               
  if(i >= 5) {                                             
    break                                                  
  }
}

# sample 6: Continue to Next Iteration of for-Loop
for(i in 1:10) {
  if(i %in% c(1, 5, 7)) { # Conditionally skip iteration
    next                                                  
  }
  x <- i^2                                             
  print(x)                                            
}

# sample 7: for-Loop Over Data Frame Columns
data(iris)                                      # Loading iris flower data set
df <- iris 
for(i in 1:ncol(df)) {  
  if(grepl("Width", colnames(df)[i])) {         # Logical condition
    df[ , i] <- df[ , i] + 1000       
  }
}
head(df) 

# sample 8: for-Loop Through List Object
my_list <- list(1:5, letters[3:1],"XXX")
for(i in 1:length(my_list)) {  
  my_list[[i]] <- rep(my_list[[i]], 3)
}
my_list


# while Loop
# A while loop in R programming is a function designed to execute some code until a condition is met. 
# Take care! While loops may never stop if the logic condition is always TRUE.

# sample 1
n <- 0                      # Variable initialization
square <- 0
while(square <= 4000) {     # While loop
  n <- n + 1
  square <- n ^ 2
}
n                           # Results
square

# sample 2
x <- c(1, 2, 3, 4)          # Variable initialization
y <- c(0, 0, 5, 1)
n <- length(x)
i <- 0
z <- numeric(n)
while (i <= n) {            # While loop
  z[i] <- x[i] + y[i]
  i <- i + 1
}
z                           # Results

################################################
#########  Functions in R
################################################
# Online Help
# Random Generation
# Input / Output
# Data Summaries
# Exiting R

# Defining Functions
square <- function(x = 10) x * x
square()
square(2)
square(3)


# Random Generation
runif(n, min = 1, max = 1)
rbinom(n, size=10, prob=0.5)
rnorm(n, mean = 0, sd = 1)
rexp(n, rate = 1)
rt(n, df = 20)


# Basic Utility Functions
* length() returns the number of elements
* mean() returns the sample mean
* median() returns the sample mean
* range() returns the largest and smallest values
* unique() removes duplicate elements
* summary() calculates descriptive statistics
* diff() takes difference between consecutive elements
* rev() reverses elements