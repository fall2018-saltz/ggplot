

us <- map_data("state")
res$n<- tolower(res$n)
mp_det <- ggplot(res, aes(map_id = n))
mp_det <- mp_det + geom_map(map = us, aes(fill = state.area), color = "black", na.rm = TRUE)
mp_det <- mp_det + expand_limits(x = us$long, y = us$lat)
mp_det <- mp_det + scale_fill_gradient(low = "white", high = "blue", guide = "colorbar") 
mp_det <- mp_det + ggtitle("Area of states") + labs(x = "Longitude", y = "Latitude") 
mp_det
