
library(ggplot2) ## library function is used to be able to use the function of the package ggplot2
library(ggmap) ## library function is used to be able to use the function of the package ggmap

dfs<- data.frame(state.name,state.center,state.area, stringsAsFactors = F) ## A new dataframe is created having state name, state centre and state longitude and latitude.
 
res<- merge(result,dfs, by.x= "n", by.y= "state.name", stringsAsFactors= FALSE) ## The dfs dateset is merged to the census dataset so that we have state location and area for all the statesin the census dataset.
res

us <- map_data("state") ##turn data from the maps package in to a data frame suitable for plotting with ggplot2
res$n<- tolower(res$n) ##state names are converted to lowercase

## To create a color coded map of us states based on area
mp_det <- ggplot(res, aes(map_id = n))
mp_det <- mp_det + geom_map(map = us, aes(fill = state.area), color = "black", na.rm = TRUE)
mp_det <- mp_det + expand_limits(x = us$long, y = us$lat)
mp_det <- mp_det + scale_fill_gradient(low = "white", high = "blue", guide = "colorbar") 
mp_det <- mp_det + ggtitle("Area of states") + labs(x = "Longitude", y = "Latitude") 
mp_det


## To create a color coded map for us states based on the murder rate.
mp_det1 <- ggplot(res, aes(map_id = n))
mp_det1 <- mp_det1 + geom_map(map = us, aes(fill = res$Murder), color = "black", na.rm = TRUE)
mp_det1 <- mp_det1 + expand_limits(x = us$long, y = us$lat)
mp_det1 <- mp_det1 + scale_fill_gradient(low = "white", high = "red", guide = "colorbar") 
mp_det1 <- mp_det1 + ggtitle("Murder rate of states") + labs(x = "Longitude", y = "Latitude") 
mp_det1


## To create a map with size of circles showing the population size of each state.
mp_det2<- mp_det+ geom_point( data=res, aes(x= x, y= y, size= res$population)) ## previous map is used and circles based on population size are plotted on it uising geom_point()
mp_det2+ ggtitle("Population of states") ## Title is given to the plot 
mp_det2


## To create a map showing only the states in North East.
latlon.nyc<- geocode(source = "dsk", "NYC, ny") ## geocode() is used to get the latitude and longitude of NYC
mp_det3<- mp_det2 + geom_point(aes(x= latlon.nyc$lon, y= latlon.nyc$lat), color= "darkred", size= 3)
mp_det3<- mp_det2 + xlim(latlon.nyc$lon-10, latlon.nyc$lon+10) + ylim(latlon.nyc$lat-10,latlon.nyc$lat+10)
mp_det3
