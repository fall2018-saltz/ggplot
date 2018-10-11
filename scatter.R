
library(ggplot2) ## library() is used to unpack the package and be able to use the function in the ggplot2 package.
g9<-ggplot(result, aes(x= result$population, y= result$percentOver18, size= result$Murder)) +
  geom_point( shape=19, color= "red") 

g9
