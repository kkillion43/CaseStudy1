#Author Kyle Killion


# Read in Raw DataSet
this <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", 
                 stringsAsFactors = FALSE,
                 header=FALSE)


# Trim the edges of the DataSet for a uniform Set
# Also, write Column names
byCountry <- this[6:223, c(1,2,4,5,6)]
names(byCountry) <- c('countryCode','Rank','Country','DollarsMillions','Error')
byCategory <- this[224:236,c(1,2,4,5,6)]
names(byCategory) <- c('countryCode','Rank','Category','DollarsMillions','Error')
