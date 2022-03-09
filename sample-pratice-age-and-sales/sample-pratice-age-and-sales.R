# create a variable 
scores = c(75, 80, 85)

# Do statistics
scores * 2

mean(scores)     # mean()
median(scores)   # median()
sd(scores)       # sd()

################################################
#########  Build a Data Frame 
################################################

# Build a group of related vectors
Names  =  c("Mike  Hussey",  "Aaron  Finch",  "Brad  Hogg",  "Steve  Smith",
            "George  Bailey",  "Mitchell  Johnson",  "Shaun  Marsh",  
            "Glenn  Maxwel l",  "Pat  Cummins",  "Mitchell  Starc",  "David  Warner")
Ages = c(39,28,44,25,32,33,31,26,22,25,28)
IPLSals = c(310,662,103,828,672,1340,455,1240,207,1030,1140)

# Combine different vectors
df = data.frame(Names, Ages,IPLSals)

# Retrive rows/columns from dataframe
df[1,]      # (row1,columns*)
df[,1]      # (row*,column1)
df[2:3]     # (column2,column3)
df[2:3,]    # (row2,row3)

# Determine statistics
mean(df[,2])
mean(df[,"Ages"])
mean(df$Ages)
var(df[,2]) # run help("var") for explaination
sd(df[,2])

################################################
#########  Display Data 
################################################

# Adding a linear regression to explore the relationship between Ages and IPLSals
plot(df$Ages ~ df$IPLSals, main = "Cricket$")
abline(lm(df$Ages ~ df$IPLSals), col = "red")    # add a line on Plot

# check linear model for Ages and IPLSals
fit = lm(df$Ages ~ df$IPLSals)  # Ages:响应变量 , IPLSals:预测变量
fit

# Predict age
fit = lm(df$IPLSals ~ df$Ages)
fit

# What is the equation? What is the estimated salary for a 20 year old?
plot(df$IPLSals ~ df$Ages, main = "Cricket$")
abline

# explore other plot 
sorted = sort(Ages)
plot(Ages, IPLSals, xlab = "Ages", col = "red" ) 
par(new=TRUE)

plot(sorted, IPLSals, xlab = "Ages", col = "green" )

plot(Ages, IPLSals, col = "blue" )
points(sorted, IPLSals, col = "red" )                 # add points to a plot

# explore plot of whole dataframe 
plot(df)
