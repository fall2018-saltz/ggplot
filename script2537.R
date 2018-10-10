
library(ggplot2)

g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
g2

g3<- ggplot(result, aes(x= factor(0), y= result$population)) + geom_boxplot()+ ggtitle("states population boxplot")
g3

g4<- ggplot(result, aes(x= factor(0), y= result$Murder)) + geom_boxplot()+ ggtitle("states murder rate boxplot")
g4

g5<-ggplot(result, aes(x= result$n , y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g5

g6<-ggplot(result, aes(x= result$n , y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g6 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g6

g7<-ggplot(result, aes(x= reorder(result$n, result$Murder), y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g7 + labs(x= "State", "Murder rate") +ggtitle("Total Murders")
g7


g8<-ggplot(result, aes(x= result$population, y= result$percentOver18, size= result$Murder)) +
  geom_point( shape=19, color="blue", fill="red") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g8

g9<- ggplot(m, aes(x= result$population, y= result$percentOver18) + geom_point(aes( size= result$Murder, colour= result$Murder )) + scale_color_gradient2(midpoint= mean(result$Murder), low=”white”, mid= “red”, high= “blue”) + ggtitle(“Scatter Plot”)


