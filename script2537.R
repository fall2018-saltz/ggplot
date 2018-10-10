
library(ggplot2)
g<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "red")+ ggtitle("states population")
g
