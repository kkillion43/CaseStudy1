# Merge the two data sets on the vector CountryCode

bigData <- merge(dataGDP, dataEd, by='CountryCode')
summary(bigData)
