
library(ggplot2) ##library() is used to unpack the gglpot2 package and be able to use the functions within it is 

library(dplyr) ## library() will allow us to use the functions in dplyr package
result_group<- group_by(result, n) groub_by function will group the result dataframe into the number of states
states_mur_tot<- summarise(result_group, tot_mur= sum(Murder)) ## summarise() will perform sum() on the murder rate in each group.
#states_mur_tot is a dataframe consisting of sates and their murder rate


## To plot a bar graph, geom_col()cis used. Here states names are taken on x axis and murder rate on y axis.
g5<-ggplot(result, aes(x= result$n , y= result$Murder)) + geom_col( color="blue", fill="white") 
g5


## On the avove graph, theme() is included to change the x axis and make it readable. Also, titile is added using ggtitle() and labs() give the labels to the x and y axis.
g6<-ggplot(result, aes(x= result$n , y= result$Murder)) + geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g6 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g6

## On the above graph, x axis is sorted using reorder() in the aes() in the ggplot()
g7<-ggplot(result, aes(x= reorder(result$n, result$Murder), y= result$Murder)) +
  geom_col( color="blue", fill="white") + theme(axis.text.x = element_text(angle = 45, hjust=1))
g7 + labs(x= "State", "Murder rate") +ggtitle("Total Murders")
g7


#On gthe above graph percentOver18 is represented by the color of the bar. Under aes(), fill= percentOver18 argument is given which fills the color of the bars. ligtest color being the lowest rate and darkest color being the highest rate.
g8<-ggplot(result, aes(x= result$n , y= result$Murder)) + geom_col(aes(fill= percentOver18))+ theme(axis.text.x = element_text(angle = 45, hjust=1))
g8 + labs(x= "State", "Murder rate") + ggtitle("Total Murders")
g8

