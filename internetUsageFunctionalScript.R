#### Source internet usage data via FRED API because quantmod FRED functionality sucks.

##First, use httr library for GET functions
library(httr)

## Establish API URL request by indiviual query strings
apiKey <- '76bb1186e704598b725af0a27159fdfc'
apiString <- '&api_key'
baseUrl <- 'http://api.stlouisfed.org/fred/release/series?release_id='
releaseId <- '234'
fileTypeString <- '&file_type=json'
fullUrl <- paste(baseUrl,releaseId,apiString,fileTypeString,sep="")

release <- GET(fullUrl)

## Extract internet usage data

## Calculate world average

## Create percentiles of world data

## Calculate ASEAN average

## Output Thai data