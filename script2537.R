
library(ggplot2) ## library function is used to be able to use the function of the package ggplot2

#to plot the histogram of the population ggplot() is used with an argument aes taking population on x axis, geom_histogram() is used, binwidth is calculated using the formula- range/no.of.obs
g1<- ggplot(result, aes(x= result$population)) + geom_histogram(bins=5, color = "black", fill= "white")+ ggtitle("states population") + labs(x= "Pouplation")
g1

#To plot a histogram of Murder rate geom_histogram() is used and binwidth is taken 1. 
g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 1, color = "black", fill= "white")+ ggtitle("states murder rate") + labs(x= "Murder rate")
g2

## To plot Assult rate, rape rate, Urban Population, same code is used but the arguments to aes will change. Also the binwidth will change depending upon the variable and its range.
h1<- ggplot(result, aes(x= result$Assault)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states assult rate") + labs(x= "Assult rate")
h1
h2<- ggplot(result, aes(x= result$UrbanPop)) + geom_histogram(binwidth = 1, color = "black", fill= "white")+ ggtitle("states urban popultaion")+ labs(x= "Urban Population")
h2
h3<- ggplot(result, aes(x= result$Rape)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate") + labs(x= "Murder rate")
h3

#To plot a box plot for population, ggplot() and geom_boxplot() are used with aes as an argument taking population on y axis. 
g3<- ggplot(result, aes(x= factor(0), y= result$population)) + geom_boxplot()+ ggtitle("states population boxplot")
g3

#Similarly to create a box plot for murder rate, geom_boxplot() is used and aes() takes murder rate as an argument for y axis.
g4<- ggplot(result, aes(x= factor(0), y= result$Murder)) + geom_boxplot()+ ggtitle("states murder rate boxplot")
g4

##I like boxplot more than an histogram personaly, because just by looking at the graph I am able to tell the maximum, minimum median, 25th percentile and 75th pertentiles.




