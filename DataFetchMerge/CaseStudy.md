# CaseStudy1
Kyle Killion  
June 13, 2016  



##Here we read in the Raw DataSet from the source


```r
# Read in Raw DataSet
this <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", 
                 stringsAsFactors = FALSE,
                 header=FALSE)
```

##Trim the edges of the DataSet for a uniform Set. Also, give it some Column names

*Another Data Set was found that went by Category. It was at the bottom so I put them as a separate set labled 'byCategory'*


```r
byCountry <- this[6:223, c(1,2,4,5,6)]
names(byCountry) <- c('countryCode','Rank','Country','DollarsMillions','Error')
byCategory <- this[224:236,c(1,2,4,5,6)]
names(byCategory) <- c('countryCode','Rank','Category','DollarsMillions','Error')
```

##Here we give the Data Columns a certain type so the computer knows how to handle the values



```r
# Data Type the Columns for what they represent
byCountry$countryCode <- as.character(byCountry$countryCode)
byCountry$Rank <- as.numeric(byCountry$Rank)
byCountry$DollarsMillions <- as.numeric(byCountry$DollarsMillions)
```

```
## Warning: NAs introduced by coercion
```

```r
byCountry$Country <- as.character(byCountry$Country)
byCountry$Error <- as.character(byCountry$Error)

# The same for the Category DataSet
byCategory$Category <- as.character(byCategory$Category)
byCategory$Rank <- as.numeric(byCategory$Rank)
byCategory$DollarsMillions <- as.numeric(byCategory$DollarsMillions)
```

```
## Warning: NAs introduced by coercion
```

```r
byCategory$countryCode <- as.character(byCategory$countryCode)
byCategory$Error <- as.character(byCategory$Error)
```

##Merge the two DataSets into one Sharing most of the columns besides the Category column

*I trimmed again the Top to remove some empty rows*


```r
# Merge the two
bigDaddy <- merge(byCountry, byCategory, 
                  by.x = c("Country",'countryCode','DollarsMillions','Rank','Error'), 
                  by.y= c("Category",'countryCode','DollarsMillions','Rank','Error'), all=TRUE)

bigDaddy <- bigDaddy[4:231,]
```

