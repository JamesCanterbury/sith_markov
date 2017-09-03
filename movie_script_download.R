setwd( "C:/Users/james/jedi_lies")

library(XML)
url <- "http://www.imsdb.com/scripts/Star-Wars-Revenge-of-the-Sith.html"





sith_script <- readHTMLTable(url, which = c(13))

  
  
  
  
