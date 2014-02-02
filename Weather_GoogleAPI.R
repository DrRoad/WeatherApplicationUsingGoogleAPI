address="Surat"
url = paste( "http://www.google.com/ig/api?weather=", URLencode(address), sep="" )
xml = xmlTreeParse(url, useInternalNodes=TRUE) # take a look at the xml output:
# Get the required informations:
condition=xpathSApply(xml,"//xml_api_reply/weather/current_conditions/condition",xmlGetAttr,"data")
temp_c=xpathSApply(xml,"//xml_api_reply/weather/current_conditions/temp_c",xmlGetAttr,"data")
humidity=xpathSApply(xml,"//xml_api_reply/weather/current_conditions/humidity",xmlGetAttr,"data")
cat( paste("The Weather in ", address, " is ", condition, ". The temperature is ", temp_c, "°C. Humidity is ", humidity, "%.") )