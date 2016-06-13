# Merge the two
bigDaddy <- merge(byCountry, byCategory, 
                  by.x = c("Country",'countryCode','DollarsMillions','Rank','Error'), 
                  by.y= c("Category",'countryCode','DollarsMillions','Rank','Error'), all=TRUE)
bigDaddy[4:231,]