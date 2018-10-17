
library(ggmap)
dfs<- data.frame(state.name,state.center,state.area, stringsAsFactors = F)
 
res<- merge(result,dfs, by.x= "n", by.y= "state.name", stringsAsFactors= FALSE)
res
