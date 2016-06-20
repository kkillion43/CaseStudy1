
# Make Another DataFrame to simplify the Data Set for just Information we need

bigData2 <- na.omit(bigData[c('CountryCode','Rank',
                              'Country','DollarsMillions',
                              'Income.Group')])



#BarPlot the Data of all the countries and grouped by Income Group

library(ggplot2)
ggplot(data=bigData2,
       aes(x=CountryCode, y=sqrt(DollarsMillions), group=Income.Group,
           colour = Income.Group))+
  theme(axis.text.x  = element_text(angle=-270, hjust=0.5, size=6,colour="black")) +
  geom_bar(stat="identity")


# Make a new column and Cut the DataFrame. Then Cross-Classify the Income Groups to see how many 
# countries are in the Lower middle income but among the 38 nations with highest GDP

bigData2$Bins <- cut(bigData2$Rank, breaks=5)
print(table(bigData2$Income.Group, bigData2$Bins))
print(paste("Lower Middle Income in top 38 GDP:", table(bigData2$Income.Group, bigData2$Bins)[4]))