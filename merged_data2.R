
library(ggplot2)
library(ggmap)
dfs<- data.frame(state.name,state.center,state.area, stringsAsFactors = F)
 
res<- merge(result,dfs, by.x= "n", by.y= "state.name", stringsAsFactors= FALSE)
res

us <- map_data("state")
res$n<- tolower(res$n)
mp_det <- ggplot(res, aes(map_id = n))
mp_det <- mp_det + geom_map(map = us, aes(fill = state.area), color = "black", na.rm = TRUE)
mp_det <- mp_det + expand_limits(x = us$long, y = us$lat)
mp_det <- mp_det + scale_fill_gradient(low = "white", high = "blue", guide = "colorbar") 
mp_det <- mp_det + ggtitle("Area of states") + labs(x = "Longitude", y = "Latitude") 
mp_det

mp_det1 <- ggplot(res, aes(map_id = n))
mp_det1 <- mp_det1 + geom_map(map = us, aes(fill = res$Murder), color = "black", na.rm = TRUE)
mp_det1 <- mp_det1 + expand_limits(x = us$long, y = us$lat)
mp_det1 <- mp_det1 + scale_fill_gradient(low = "white", high = "red", guide = "colorbar") 
mp_det1 <- mp_det1 + ggtitle("Area of states") + labs(x = "Longitude", y = "Latitude") 
mp_det1

mp_det2<- mp_det+ geom_point( data=res, aes(x= x, y= y, size= res$population))
mp_det2+ ggtitle("Population of states")
mp_det2

latlon.nyc<- geocode(source = "dsk", "NYC, ny")
mp_det3<- mp_det1 + geom_point(aes(x= latlon.nyc$lon, y= latlon.nyc$lat), color= "darkred", size= 3)
mp_det3<- mp_det1 + xlim(latlon.nyc$lon-10, latlon.nyc$lon+10) + ylim(latlon.nyc$lat-10,latlon.nyc$lat+10)
mp_det3
