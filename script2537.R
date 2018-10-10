
library(ggplot2)
g1<- ggplot(result, aes(x= result$population)) + geom_histogram(binwidth = 5, color = "black", fill= "red")+ ggtitle("states population")
g1

g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states population")
g2
