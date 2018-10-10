
library(ggplot2)
g<- ggplot(result, aes(x= result$Murder)) + geom_histogram(binwidth = 5, color = "black", fill= "red")
g<- g + ggtitle("states population")
g
view(g)
