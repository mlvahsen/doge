calc_gdp2<-function(x, year=NULL, country=NULL){
	if (!is.null(year)){
		x<-x[x$year %in% year, ]
	}
	
	if (!is.null(country)){
		x<-x[x$country %in% country, ]
	}
	
	gdp<-with(x, pop*gdpPercap)
	new<-cbind(x, gdp=gdp)
	return(new)
}