
library(ggplot2)
g9<-ggplot(result, aes(x= result$population, y= result$percentOver18, size= result$Murder)) +
  geom_point( shape=19, color= "red") 

g9
