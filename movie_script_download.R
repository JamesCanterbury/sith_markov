setwd( "C:/Users/james/jedi_lies")

library(XML)
url <- "http://www.imsdb.com/scripts/Star-Wars-Revenge-of-the-Sith.html"





sith_script <- readHTMLTable(url, which = c(13))
write.csv(sith_script, "sith.csv")
##sith_script_lines <- read.csv(file="sith.csv", header = TRUE,  blank.lines.skip=TRUE)
##sith_script_lines <- subset(sith_script_lines, select = c("V2"))
##sith_script_lines <- subset(sith_script_lines, !(V2 %in%  NA)  ,select = c("V2"))
 ##sith_script_lines <- as.matrix(sith_script_lines) 
sith_script_lines <-  read_lines("sith.csv", skip = 4)
sith_script_lines <- paste(sith_script_lines, collapse = " ")

