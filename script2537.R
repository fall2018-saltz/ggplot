
library(ggplot2)

g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
g2

g3<- ggplot(result, aes(x= factor(0), y= result$population)) + geom_boxplot()+ ggtitle("states population boxplot")
g3

g4<- ggplot(result, aes(x= factor(0), y= result$Murder)) + geom_boxplot()+ ggtitle("states murder rate boxplot")
g4




