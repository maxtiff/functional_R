#### Noob functional method for handling internet usage data via the FRED API.
#### Source internet usage data via FRED API because quantmod FRED functionality sucks.

##Use httr library for GET functions and jsonlite library to handle json data.
library(httr)
library(jsonlite)

## Establish API URL request by indiviual query strings
apiKey <- '76bb1186e704598b725af0a27159fdfc'
apiString <- '&api_key='
baseUrl <- 'https://api.stlouisfed.org/fred/release/series?release_id='
fileTypeString <- '&file_type=json'
releaseUrl <- paste(baseUrl,releaseId,apiString,apiKey,fileTypeString,sep="")

## Get release information
release <- GET(releaseUrl)

## Extract internet usage data
json1 <- content(release)
json2 <- jsonlite::fromJSON(toJSON(json1))
json3 <- json2$seriess
json4 <- json3[grepl("ITNET",json3$id),]
json5 <- cbind(json4$id,json4$title)
colnames(json5) <- c('id', 'title')

aseanCtry <- c("Thailand", "Myanmar", "Cambodia", "Laos", "Malaysia", "Vietnam", "Indonesia", "Singapore", "Philippines", "Brunei")

getSeriesIds <- function(list) {
  function (x) {
    
  }
}


## Calculate world average

## Create percentiles of world data

## Calculate ASEAN average and ranks

## Output Thai data