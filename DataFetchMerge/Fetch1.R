################
# Download CSV file from a Public URL
# Kyle Killion
# Updated 11 June 2016
# Data from "Gross Domestic Product data for the 190 ranked countries"
################

# Lets load some packages needed to get going
library(repmis)
library(countrycode)

# The direct link to the RAW DataSet set to object thisURL
thisURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'

#Download data into object FinRegData
FinRegData <- source_data(thisURL)

# Next step is to standardize the Country ID numbers based on their iso 2 character codes
FinRegData$iso2c <- countrycode(FinRegData$country,
              origin = "country.name",
              destination = "iso2c")
