
library(ggplot2)

g1<- ggplot(result, aes(x= result$population)) + geom_histogram(binwidth= 779147, color = "black", fill= "white")+ ggtitle("states population")
g1

g2<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 1, color = "black", fill= "white")+ ggtitle("states murder rate")
g2

g1<- ggplot(result, aes(x= result$population)) + geom_histogram(binwidth = 100000, color = "black", fill= "white")+ ggtitle("states population")
g1


h1<- ggplot(result, aes(x= result$Assault)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
h1
h2<- ggplot(result, aes(x= result$UrbanPop)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
h2
h3<- ggplot(result, aes(x= result$Rape)) + geom_histogram(binwidth = 5, color = "black", fill= "white")+ ggtitle("states murder rate")
h3

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
c1<- ggplot(result, aes(x= result$population)) + geom_histogram(binwidth= 779147, bins= 30, color = "black", fill= "white")+ ggtitle("states population")
c1


