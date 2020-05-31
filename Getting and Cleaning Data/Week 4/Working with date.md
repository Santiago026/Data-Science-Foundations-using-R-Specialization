# Working with dates
  - ``` date() ```
  - ``` Sys.Date() ```
  - ``` format() ```
  - ``` library(lubridate); ymd() ```
    - ``` ymd() ``` Year Month Day
    - ``` mdy() ``` Month Day Year
    - ``` dmy() ``` Day Month Year
    - ``` ymd_hms() ``` Year Month Day Hours Minutes Seconds
    - ``` wday() ``` Find the weekday

## Starting simple
```R
# Using the date() function
> d1 = date()
> d1
[1] "Sun May 31 12:13:37 2020"
> class(d1)
[1] "character"
```

## Date class
```R
# Return the system date function
> d2 = Sys.Date()
> d2
[1] "2020-05-31"
> class(d2)
[1] "Date"
```

## Formatting dates
- ``` %d ``` = day as a number (0-31)
- ```%a ```= abbreviated weekday
- ```%A ``` = unabbreviated weekday
- ``` %m ``` = month (00-12)
- ``` %b ``` = abbreviated month
- ``` %B ``` = unabbreviated month
- ``` %y ``` = 2 digit year
- ``` %Y ``` = four digit year
```R
# Use the format function to show abbreviations
> format(d2,"%a %b %d")
[1] "Sun May 31"
```

## Creating dates
```R
# Take a character vector and turn them into dates with as.Date() by telling the function that you should be looking for a day, a month, and a year
> x = c("1jan1960", "2jan1960", "31mar1960", "30jul1960"); z = as.Date(x, "%d%b%Y")
> z
[1] "1960-01-01" "1960-01-02" "1960-03-31" "1960-07-30"
# How far apart are the first date and the second date
> z[1] - z[2]
Time difference of -1 days
> as.numeric(z[1]-z[2])
[1] -1
```

## Converting to Julian
```R
# Use the weekday(), months(), julian() to convert date 
> weekdays(d2)
[1] "Sunday"
> months(d2)
[1] "May"
> julian(d2)
[1] 18413
attr(,"origin")
[1] "1970-01-01"
```

## Lubridate
```R
> install.packages("lubridate")
> library(lubridate)
> ymd("20130108")
[1] "2013-01-08"
> mdy("08/04/2013")
[1] "2013-08-04"
> dmy("03-04-2013")
[1] "2013-04-03"
```
- http://www.r-statistics.com/2012/03/do-more-with-dates-and-times-in-r-with-lubridate-1-1-0/

## Dealing with times
```R
# Find the date including time
> ymd_hms("2011-08-03 10:15:03")
[1] "2011-08-03 10:15:03 UTC"
# Find the timezone
> ymd_hms("2011-08-03 10:15:03",tz="Pacific/Auckland")
[1] "2011-08-03 10:15:03 NZST"
```

## Some functions have slightly different syntax
```R
> x = dmy(c("1jan2013", "2jan2013", "31mar2013", "30jul2013"))
> wday(x[1])
[1] 3
> wday(x[1],label=TRUE)
[1] Tue
Levels: Sun < Mon < Tue < Wed < Thu < Fri < Sat
```

## Notes and further resources
- More information in this nice lubridate tutorial [here](http://www.r-statistics.com/2012/03/do-more-with-dates-and-times-in-r-with-lubridate.html)
- The lubridate vignette is the same content [here](http://cran.r.project.org/web/packages/libridate/vignettes/lubridate.html)
- Ultimately you want your dates and times as class "Date" or the classes "POSIXct", "POSIXlt". For more information type 
``` ?POSIXlt ```
