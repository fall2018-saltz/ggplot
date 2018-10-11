
library(ggplot2) ##library() is used to unpack the gglpot2 package and be able to use the functions within it is 



result$tot_mur= (result$population/100000)* result$Murder
result$states_mur= round(result$tot_mur)

## To plot a bar graph, geom_col()cis used. Here states names are taken on x axis and murder rate on y axis.
g5<-ggplot(result, aes(x= result$n , y= result$states_mur)) + geom_col( color="blue", fill="white") 
g5


## On the avove graph, theme() is included to change the x axis and make it readable. Also, titile is added using ggtitle() and labs() give the labels to the x and y axis.
g6<-ggplot(result, aes(x= result$n , y= result$states_mur)) + geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g6 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g6

## On the above graph, x axis is sorted using reorder() in the aes() in the ggplot()
g7<-ggplot(result, aes(x= reorder(result$n, result$Murder), y= result$states_mur)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g7 + labs(x= "State", "Murder rate") +ggtitle("Total Murders")
g7


#On gthe above graph percentOver18 is represented by the color of the bar. Under aes(), fill= percentOver18 argument is given which fills the color of the bars. ligtest color being the lowest rate and darkest color being the highest rate.
g8<-ggplot(result, aes(x= result$n , y= result$Murder)) + geom_col(aes(fill= percentOver18))+ theme(axis.text.x = element_text(angle = 45, hjust=1))
g8 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g8

