
library(ggplot2)


g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
g2

g1<- ggplot(result, aes(x= factor(0), y= result$population)) + geom_boxplot()+ ggtitle("states population boxplot")
g1
