
library(ggplot2) ## library() is used to unpack the package and be able to use the function in the ggplot2 package.

#A scatter plot is created between the population and population over 18 years of age in differnt states. The size of the points represents the percentage Murder rate. 
g9<-ggplot(result, aes(x= result$population, y= result$percentOver18, size= result$Murder)) +
  geom_point( shape=19, color= "red") 
g9
