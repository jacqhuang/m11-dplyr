ice.cream.flavors <- c("strawberry","rocky road","chocolate","greentea")
ice.cream.prices <- c(500,350,100,150)
ice.cream.sizes <- c("M","L","XS","XL")
ice.cream.calories <- c(0,1000,-10,150)
location <- c("Seattle","Montana")
ice.cream.data <- data.frame(ice.cream.flavors,ice.cream.prices,ice.cream.sizes,ice.cream.calories,location, stringsAsFactors = FALSE)
rownames(ice.cream.data)
colnames(ice.cream.data)