# Summarizing Data

# Example data set

https://data.baltimorecity.gov/Community/Restaurants/k5ry-ef3G

# Getting the data from the web
```R
> if(!file.exists(".data")){dir.create("./data")}
> fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
> download.file(fileUrl,destfile="./data/restaurants.csv",method="curl")
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  112k    0  112k    0     0   112k      0 --:--:--  0:00:01 --:--:-- 77380
> restData <- read.csv("./data/restaurants.csv")
```

# Looking at a bit of the data
```R
# Returns the first 3 rows of the dataset restData we created
> head(restData, n=3)
   name zipCode neighborhood
1   410   21206    Frankford
2  1919   21231  Fells Point
3 SAUTE   21224       Canton
  councilDistrict policeDistrict
1               2   NORTHEASTERN
2               1   SOUTHEASTERN
3               1   SOUTHEASTERN
                       Location.1
1 4509 BELAIR ROAD\nBaltimore, MD
2    1919 FLEET ST\nBaltimore, MD
3   2844 HUDSON ST\nBaltimore, MD
  X2010.Census.Neighborhoods
1                         NA
2                         NA
3                         NA
  X2010.Census.Wards.Precincts
1                           NA
2                           NA
3                           NA
  Zip.Codes
1        NA
2        NA
3        NA
# The tail command will return the bottom 3 rows of the dataframe
> tail(restData,n=3)
             name zipCode
1325 ZINK'S CAFÂ\u0090   21213
1326 ZISSIMOS BAR   21211
1327       ZORBAS   21224
      neighborhood councilDistrict
1325 Belair-Edison              13
1326       Hampden               7
1327     Greektown               2
     policeDistrict
1325   NORTHEASTERN
1326       NORTHERN
1327   SOUTHEASTERN
                           Location.1
1325 3300 LAWNVIEW AVE\nBaltimore, MD
1326      1023 36TH ST\nBaltimore, MD
1327  4710 EASTERN Ave\nBaltimore, MD
     X2010.Census.Neighborhoods
1325                         NA
1326                         NA
1327                         NA
     X2010.Census.Wards.Precincts
1325                           NA
1326                           NA
1327                           NA
     Zip.Codes
1325        NA
1326        NA
1327        NA
```

# Make summary
```R
# Get a summary of each variable
> summary(restData)
     name          
 Length:1327       
 Class :character  
 Mode  :character  
                   
                   
                   
    zipCode      
 Min.   :-21226  
 1st Qu.: 21202  
 Median : 21218  
 Mean   : 21185  
 3rd Qu.: 21226  
 Max.   : 21287  
 neighborhood      
 Length:1327       
 Class :character  
 Mode  :character  
                   
                   
                   
 councilDistrict 
 Min.   : 1.000  
 1st Qu.: 2.000  
 Median : 9.000  
 Mean   : 7.191  
 3rd Qu.:11.000  
 Max.   :14.000  
 policeDistrict    
 Length:1327       
 Class :character  
 Mode  :character  
                   
                   
                   
  Location.1       
 Length:1327       
 Class :character  
 Mode  :character  
                   
                   
                   
 X2010.Census.Neighborhoods
 Mode:logical              
 NA's:1327                 
                           
                           
                           
                           
 X2010.Census.Wards.Precincts
 Mode:logical                
 NA's:1327                   
                             
                             
                             
                             
 Zip.Codes     
 Mode:logical  
 NA's:1327     
```

# Mpre in depth information
```R
# str command gives more information about the dataframe/Matrix
> str(restData)
'data.frame':	1327 obs. of  9 variables:
 $ name                        : chr  "410" "1919" "SAUTE" "#1 CHINESE KITCHEN" ...
 $ zipCode                     : int  21206 21231 21224 21211 21223 21218 21205 21211 21205 21231 ...
 $ neighborhood                : chr  "Frankford" "Fells Point" "Canton" "Hampden" ...
 $ councilDistrict             : int  2 1 1 14 9 14 13 7 13 1 ...
 $ policeDistrict              : chr  "NORTHEASTERN" "SOUTHEASTERN" "SOUTHEASTERN" "NORTHERN" ...
 $ Location.1                  : chr  "4509 BELAIR ROAD\nBaltimore, MD" "1919 FLEET ST\nBaltimore, MD" "2844 HUDSON ST\nBaltimore, MD" "3998 ROLAND AVE\nBaltimore, MD" ...
 $ X2010.Census.Neighborhoods  : logi  NA NA NA NA NA NA ...
 $ X2010.Census.Wards.Precincts: logi  NA NA NA NA NA NA ...
 $ Zip.Codes                   : logi  NA NA NA NA NA NA ...
```

# Quantiles of quantitative variables
```R
# Use quantiles to look at variability of the councilDistrict variable
> quantile(restData$councilDistrict,na.rm=TRUE)
  0%  25%  50%  75% 100% 
   1    2    9   11   14 
# Use quantiles probabilities 
> quantile(restData$councilDistrict,pros=c(0.5,0.75,0.9))
  0%  25%  50%  75% 100% 
   1    2    9   11   14
 ```
 
 # Make table
 ```R
 # Make a table of specific variables. Use NA if any Not Available
 > table(restData$zipCode,useNA="ifany")

-21226  21201  21202  21205  21206 
     1    136    201     27     30 
 21207  21208  21209  21210  21211 
     4      1      8     23     41 
 21212  21213  21214  21215  21216 
    28     31     17     54     10 
 21217  21218  21220  21222  21223 
    32     69      1      7     56 
 21224  21225  21226  21227  21229 
   199     19     18      4     13 
 21230  21231  21234  21237  21239 
   156    127      7      1      3 
 21251  21287 
     2      1 
```

# Make 2-d tables. Council district and zip code
> table(restData$councilDistrict,restData$zipCode)
    
     -21226 21201 21202 21205
  1       0     0    37     0
  2       0     0     0     3
  3       0     0     0     0
  4       0     0     0     0
  5       0     0     0     0
  6       0     0     0     0
  7       0     0     0     0
  8       0     0     0     0
  9       0     1     0     0
  10      1     0     1     0
  11      0   115   139     0
  12      0    20    24     4
  13      0     0     0    20
  14      0     0     0     0
    
     21206 21207 21208 21209 21210
  1      0     0     0     0     0
  2     27     0     0     0     0
  3      0     0     0     0     0
  4      0     0     0     0     0
  5      0     3     0     6     0
  6      0     0     0     1    19
  7      0     0     0     1     0
  8      0     1     0     0     0
  9      0     0     0     0     0
  10     0     0     0     0     0
  11     0     0     1     0     0
  12     0     0     0     0     0
  13     3     0     0     0     0
  14     0     0     0     0     4
    
     21211 21212 21213 21214 21215
  1      0     0     2     0     0
  2      0     0     0     0     0
  3      0     0     2    17     0
  4      0    27     0     0     0
  5      0     0     0     0    31
  6      0     0     0     0    15
  7     27     0     0     0     6
  8      0     0     0     0     0
  9      0     0     0     0     0
  10     0     0     0     0     0
  11     0     1     0     0     0
  12     0     0    13     0     0
  13     0     0    13     0     1
  14    14     0     1     0     1
    
     21216 21217 21218 21220 21222
  1      0     0     0     0     7
  2      0     0     0     0     0
  3      0     0     3     0     0
  4      0     0     0     0     0
  5      0     0     0     0     0
  6      1     0     0     0     0
  7      7    15     6     0     0
  8      0     0     0     0     0
  9      2     8     0     0     0
  10     0     0     0     1     0
  11     0     9     0     0     0
  12     0     0    26     0     0
  13     0     0     0     0     0
  14     0     0    34     0     0
    
     21223 21224 21225 21226 21227
  1      0   140     1     0     0
  2      0    54     0     0     0
  3      0     0     0     0     1
  4      0     0     0     0     0
  5      0     0     0     0     0
  6      0     0     0     0     0
  7      0     0     0     0     0
  8      2     0     0     0     2
  9     53     0     0     0     0
  10     0     0    18    18     0
  11     1     0     0     0     0
  12     0     0     0     0     0
  13     0     5     0     0     1
  14     0     0     0     0     0
    
     21229 21230 21231 21234 21237
  1      0     1   124     0     0
  2      0     0     0     0     1
  3      0     0     0     7     0
  4      0     0     0     0     0
  5      0     0     0     0     0
  6      0     0     0     0     0
  7      0     0     0     0     0
  8     13     0     0     0     0
  9      0    11     0     0     0
  10     0   133     0     0     0
  11     0    11     0     0     0
  12     0     0     2     0     0
  13     0     0     1     0     0
  14     0     0     0     0     0
    
     21239 21251 21287
  1      0     0     0
  2      0     0     0
  3      0     2     0
  4      3     0     0
  5      0     0     0
  6      0     0     0
  7      0     0     0
  8      0     0     0
  9      0     0     0
  10     0     0     0
  11     0     0     0
  12     0     0     0
  13     0     0     1
  14     0     0     0
 ```
               
       
