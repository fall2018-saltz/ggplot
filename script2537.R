
library(ggplot2)
g<- ggplot(result, aes(x= population)) 
g<- g+ geom_histogram(binwidth = 5000, color = "black")
