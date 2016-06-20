#Set the 2-alpha.code column name

names(dataEd)[28] <- '2-alpha.code'

# Trim the edges of the DataSet for a uniform Set
# Also, write Column names

#dataGDP <- dataGDP[6:223, c(1,2,4,5)]
names(dataGDP) <- c('CountryCode','Rank','Country','DollarsMillions')



# Data Type the Columns for what they represent

dataGDP$CountryCode <- as.character(dataGDP$CountryCode)
dataGDP$Rank <- as.integer(dataGDP$Rank)
dataGDP$DollarsMillions <- as.integer(gsub(",","", dataGDP$DollarsMillions))
dataGDP$Country <- as.character(dataGDP$Country)