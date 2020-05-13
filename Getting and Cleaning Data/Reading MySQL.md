# MySQL
- Free and widely used open source database software
- Widely used in internet based applications
  - Databases
  - Tables within databases
  - Fields within tables
- Each row is called a record
More info on mySQL [here](https://en.wikipedia.org/wiki/MySQL) or [here](https://www.mysql.com/)

You can install mySQL [here](https://dev.mysql.com/doc/refman/5.7/en/installing.html)

# Install RMySQL
- On a Man: install.packages("RMySQL")
- On Windows:
  - Official instructions - [here](http://biostat.mc.vanderbilt.edu/wiki/Main/RMySQL)
  - Potentially useful guide - [here](http://www.ahschulz.de/2013/07/23/installing-rmysql-under-windows/)
  
  # Connecting and listing databases 
  
  ## Example taken from [here](http://genome.ucsc.edu/goldenPath/help/mysql.html)
  
 ```R
 ucsc <- dbConnect(MySQL(),user=:genome",
 host="genome-mysql.cse.ucsc.edu")
 result <- dbGetQuery(UCSCDb,"show databases;"); dbDisconnect(ucscDb);
 
 hg19 <-  dbConnect(MySQL(),user=:genome", db="hg19",
 host="genome-mysql.cse.ucsc.edu")
 allTables <- dblistTables(hg19)
 length(allTables)
 
 allTables[1:5]

 ```
