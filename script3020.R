
library(ggplot2)
g5<-ggplot(result, aes(x= result$n , y= result$Murder)) +
  geom_col( color="blue", fill="white") 

g6<-ggplot(result, aes(x= result$n , y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g6 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g6

gnew <- ggplot(data=m, aes(x=n, y=Murder, fill=percentOver18)) 
gnew <- gnew + geom_col(stat="identity")
gnew <- gnew + scale_fill_gradient(low = "plum2", high = "plum4", guide = "colorbar") 
g6
g7<-ggplot(result, aes(x= reorder(result$n, result$Murder), y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g7 + labs(x= "State", "Murder rate") +ggtitle("Total Murders")
g7
