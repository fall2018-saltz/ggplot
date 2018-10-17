
library(ggmap)
dfs<- data.frame(state.name,state.center,state.area, stringsAsFactors = F)
head(result1)
dfs$state.name<- 
res<- merge(result,dfs, by.x= result$n, by.y= dfs$state.name, stringsAsFactors= FALSE)
res
