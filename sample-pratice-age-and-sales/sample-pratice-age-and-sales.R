################################################
#########  Statistics Pratice 
################################################

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
#########  Display Data in Data Frame 
################################################

# Predict Age
plot(df$Ages ~ df$IPLSals, main = "Cricket$")    # Add a plot    
abline(lm(df$Ages ~ df$IPLSals), col = "red")    # add a line on Plot

fit = lm(df$Ages ~ df$IPLSals)                   # lm() Function to Fit Linear Models
fit

# Predict Salary
fplot(df$IPLSals ~ df$Ages, main = "Cricket$")
abline(lm(df$IPLSals ~ df$Ages), col="red")

fit2 = lm(df$IPLSals ~ df$Ages)                   # lm() Function to Fit Linear Models 
fit2

# explore other plots 
sorted = sort(Ages)
plot(Ages, IPLSals, xlab = "Ages", col = "red" ) 
plot(sorted, IPLSals, xlab = "Ages", col = "green" )
plot(Ages, IPLSals, col = "blue" )
points(sorted, IPLSals, col = "red" )                 # add points to a plot

# explore plot of whole dataframe 
plot(df)