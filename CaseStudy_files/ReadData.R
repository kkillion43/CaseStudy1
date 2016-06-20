# Read the Gross Domestic Product data for the 190 ranked countries in this data set

dataGDP <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", 
                    stringsAsFactors = FALSE,
                    header=FALSE)


# Read the educational data from this data set

dataEd <- read.csv('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv',
                   stringsAsFactors = FALSE,
                   header = TRUE)