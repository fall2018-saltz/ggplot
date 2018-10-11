
library(ggplot2)
g5<-ggplot(result, aes(x= result$n , y= result$Murder)) +
  geom_col( color="blue", fill="white") 

g6<-ggplot(result, aes(x= result$n , y= result$Murder)) + geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g6 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g6


g7<-ggplot(result, aes(x= reorder(result$n, result$Murder), y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g7 + labs(x= "State", "Murder rate") +ggtitle("Total Murders")
g7



g8<-ggplot(m, aes(x= result$n , y= result$Murder)) + geom_col(aes(fill= percentOver18))+ theme(axis.text.x = element_text(angle = 45, hjust=1))

g8 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g8

