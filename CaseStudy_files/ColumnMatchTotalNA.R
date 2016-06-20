#See how many IDs match

print(paste("ID NO Match:",sum(is.na(bigData$CountryCode))))



# Count the number of NA's within the DataSet

colSums(is.na(bigData))



# In Total NA's

print(paste("Total NA:", table(is.na(bigData))[2]))