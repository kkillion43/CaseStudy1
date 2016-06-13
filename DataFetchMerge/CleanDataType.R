#Author Kyle Killion


# Data Type the Columns for what they represent
byCountry$countryCode <- as.character(byCountry$countryCode)
byCountry$Rank <- as.numeric(byCountry$Rank)
byCountry$DollarsMillions <- as.numeric(byCountry$DollarsMillions)
byCountry$Country <- as.character(byCountry$Country)
byCountry$Error <- as.character(byCountry$Error)

# The same for the Category DataSet
byCategory$Category <- as.character(byCategory$Category)
byCategory$Rank <- as.numeric(byCategory$Rank)
byCategory$DollarsMillions <- as.numeric(byCategory$DollarsMillions)
byCategory$countryCode <- as.character(byCategory$countryCode)
byCategory$Error <- as.character(byCategory$Error)