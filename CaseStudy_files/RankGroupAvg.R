# Sort the data frame in ascending order by GDP rank 
# (so United States is last)

index <- with(bigData, order(Rank, decreasing = TRUE))
heyo <- bigData[index,][c('Rank','Country')]
print(heyo[13:13,])



#Group the Income.Group column and then get the Average Rank of each

print(aggregate(Rank ~ Income.Group, bigData, mean))
