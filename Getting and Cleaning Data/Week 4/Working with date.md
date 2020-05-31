# Working with dates

## Starting simple
```R

```

## Date class
```R

```

## Formatting dates
``` %d ``` = day as a number (0-31), ```%a ```= abbreviated weekday, ```%A ``` = unabbreviated weekday, ``` %m ``` = month (00-12), ``` %b ``` = abbreviated month, ``` %B ``` = unabbreviated month, ``` %y ``` = 2 digit year, ``` %Y ``` = four digit year
```R

```

## Creating dates
```R

```

## Converting to Julian
```R

```

## Lubridate
```R

```
- http://www.r-statistics.com/2012/03/do-more-with-dates-and-times-in-r-with-lubridate-1-1-0/

## Some functions have slightly different syntax
```R

```

## Notes and further resources
- More information in this nice lubridate tutorial [here](http://www.r-statistics.com/2012/03/do-more-with-dates-and-times-in-r-with-lubridate.html)
- The lubridate vignette is the same content [here](http://cran.r.project.org/web/packages/libridate/vignettes/lubridate.html)
- Ultimately you want your dates and times as class "Date" or the classes "POSIXct", "POSIXlt". For more information type 
``` ?POSIXlt ```
