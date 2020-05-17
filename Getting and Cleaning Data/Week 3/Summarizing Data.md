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
 
# Check for missing values
```R
# Check for missing values. 1 means vlaues are missing. 0 means no missing values. 
> sum(is.na(restData$councilDistrict))
[1] 0
# Any command will TRUE or FALSE if any value is equal to NA
> any(is.na(restData$councilDistrict))
[1] FALSE
# All will check and see if every single value satisfies a condition
> all(restData$zipCode > 0)
[1] FALSE
```

# Row and column sums
```R
# colSums() and rowSums() returns the sum of a row or column
> colSums(is.na(restData))
                        name 
                           0 
                     zipCode 
                           0 
                neighborhood 
                           0 
             councilDistrict 
                           0 
              policeDistrict 
                           0 
                  Location.1 
                           0 
  X2010.Census.Neighborhoods 
                        1327 
X2010.Census.Wards.Precincts 
                        1327 
                   Zip.Codes 
                        1327 
> all(colSums(is.na(restData))==0)
[1] FALSE
```

# Values with specific characteristics
```R
# Find all of the zip codes equal to a value
> table(restData$zipCode %in% c("21213"))

FALSE  TRUE 
 1296    31 
# Find all of the values equal to one or two values
> table(restData$zipCode %in% c("21213"))

FALSE  TRUE 
 1296    31 
> table(restData$zipCode %in% c("21212", "21213"))

FALSE  TRUE 
 1268    59
```

# Values with specific characteristics
```R
#Use logic variable to subset a dataset. Only restaraunts that occurr in zip codes provided
> restData[restData$zipCode %in% c("21212","21213"),]
                                     name
29                      BAY ATLANTIC CLUB
39                            BERMUDA BAR
92                              ATWATER'S
111            BALTIMORE ESTONIAN SOCIETY
187                              CAFE ZEN
220                   CERIELLO FINE FOODS
266    CLIFTON PARK GOLF COURSE SNACK BAR
276                CLUB HOUSE BAR & GRILL
289                 CLUBHOUSE BAR & GRILL
291                           COCKY LOU'S
362       DREAM TAVERN, CARRIBEAN  U.S.A.
373                         DUNKIN DONUTS
383        EASTSIDE  SPORTS  SOCIAL  CLUB
417                      FIELDS OLD TRAIL
475                             GRAND CRU
545                           RANDY'S BAR
604     MURPHY'S NEIGHBORHOOD BAR & GRILL
616                                NEOPOL
620             NEW CLUB THUNDERBIRD INC.
626                    NEW MAYFIELD, INC.
678                          IKAN SEAFOOD
711                          KAY-CEE CLUB
763                                LA'RAE
777                  LEMONGRASS BALTIMORE
779                   LEN'S SANDWICH SHOP
845                            MCDONALD'S
852                            MCDONALD'S
873                  NEW REX LIQUORS,INC.
895                             OK TAVERN
919                          PANERA BREAD
940                    PEIWEI ASIAN DINER
949                   PERGUSA ENTERPRISES
957               PHANTOM'S BAR AND GRILL
976          POPEYES FAMOUS FRIED CHICKEN
994                         ROBBIE'S NEST
1017                          RUTLAND BAR
1018                      RYAN'S DAUGHTER
1022         saigon remembered restaurant
1053                SHIRLEY'S  HONEY HOLE
1120                     STEEPLE CHASE II
1122                               SUBWAY
1153                              TAM-TAM
1155                                TASTE
1159                         TAYLORS EAST
1186                THE EDGE BAR & LOUNGE
1187 THE EDGE BAR & LOUNGE - KITCHEN AREA
1198               THE HOLLOW BAR & GRILL
1209             THE NEW BUCKETT'S LOUNGE
1232                         THREE  ACE'S
1246                 TORAIN'S  HIDE-A-WAY
1259                    TSUNAMI BALTIMORE
1287                         VITO'S PIZZA
1298 WENDY'S OLD FASHIONED HAMBURGERS #96
1304                 WHITTEN'S  (4502-04)
1312                          wozi lounge
1319           YETI RESTAURANT & CARRYOUT
1320                     YORK CLUB TAVERN
1323            ZEN WEST ROADSIDE CANTINA
1325                    ZINK'S CAFÂ\u0090
     zipCode
29     21212
39     21213
92     21212
111    21213
187    21212
220    21212
266    21213
276    21213
289    21213
291    21213
362    21213
373    21212
383    21213
417    21212
475    21212
545    21213
604    21212
616    21212
620    21213
626    21213
678    21212
711    21212
763    21213
777    21213
779    21213
845    21213
852    21212
873    21212
895    21213
919    21212
940    21212
949    21212
957    21213
976    21212
994    21213
1017   21213
1018   21212
1022   21212
1053   21213
1120   21213
1122   21213
1153   21212
1155   21212
1159   21213
1186   21213
1187   21213
1198   21212
1209   21213
1232   21213
1246   21213
1259   21213
1287   21212
1298   21212
1304   21213
1312   21212
1319   21212
1320   21212
1323   21212
1325   21213
                    neighborhood
29                      Downtown
39                 Broadway East
92     Chinquapin Park-Belvedere
111           South Clifton Park
187                     Rosebank
220    Chinquapin Park-Belvedere
266                  Darley Park
276  Orangeville Industrial Area
289  Orangeville Industrial Area
291                Broadway East
362                Broadway East
373                     Homeland
383                Broadway East
417                   Mid-Govans
475    Chinquapin Park-Belvedere
545                Broadway East
604                   Mid-Govans
616    Chinquapin Park-Belvedere
620                  Middle East
626                Belair-Edison
678    Chinquapin Park-Belvedere
711                     Homeland
763                       Oliver
777                 Little Italy
779                Broadway East
845           South Clifton Park
852               Radnor-Winston
873                  Wilson Park
895                Biddle Street
919                  Lake Walker
940                   Cedarcroft
949                     Rosebank
957                Belair-Edison
976               Winston-Govans
994                Broadway East
1017               Broadway East
1018   Chinquapin Park-Belvedere
1022                  Mid-Govans
1053               Broadway East
1120               Biddle Street
1122                      Oliver
1153                  Mid-Govans
1155                  Mid-Govans
1159                       Berea
1186               Broadway East
1187               Broadway East
1198                    Rosebank
1209               Broadway East
1232               Belair-Edison
1246               Broadway East
1259                Little Italy
1287                  Cedarcroft
1298                    Homeland
1304           Claremont-Freedom
1312                    Guilford
1319                    Rosebank
1320                    Homeland
1323                    Rosebank
1325               Belair-Edison
     councilDistrict
29                11
39                12
92                 4
111               12
187                4
220                4
266               14
276               13
289               13
291               12
362               13
373                4
383               13
417                4
475                4
545               12
604                4
616                4
620               13
626               13
678                4
711                4
763               12
777                1
779               12
845               12
852                4
873                4
895               13
919                4
940                4
949                4
957                3
976                4
994               12
1017              12
1018               4
1022               4
1053              13
1120              13
1122              12
1153               4
1155               4
1159              13
1186              12
1187              12
1198               4
1209              13
1232               3
1246              12
1259               1
1287               4
1298               4
1304              13
1312               4
1319               4
1320               4
1323               4
1325              13
     policeDistrict
29          CENTRAL
39          EASTERN
92         NORTHERN
111         EASTERN
187        NORTHERN
220        NORTHERN
266    NORTHEASTERN
276         EASTERN
289         EASTERN
291         EASTERN
362         EASTERN
373        NORTHERN
383         EASTERN
417        NORTHERN
475        NORTHERN
545         EASTERN
604        NORTHERN
616        NORTHERN
620         EASTERN
626    NORTHEASTERN
678        NORTHERN
711        NORTHERN
763         EASTERN
777    SOUTHEASTERN
779         EASTERN
845         EASTERN
852        NORTHERN
873        NORTHERN
895         EASTERN
919        NORTHERN
940        NORTHERN
949        NORTHERN
957    NORTHEASTERN
976        NORTHERN
994         EASTERN
1017        EASTERN
1018       NORTHERN
1022       NORTHERN
1053        EASTERN
1120        EASTERN
1122        EASTERN
1153       NORTHERN
1155       NORTHERN
1159        EASTERN
1186        EASTERN
1187        EASTERN
1198       NORTHERN
1209        EASTERN
1232   NORTHEASTERN
1246        EASTERN
1259   SOUTHEASTERN
1287       NORTHERN
1298       NORTHERN
1304   NORTHEASTERN
1312       NORTHERN
1319       NORTHERN
1320       NORTHERN
1323       NORTHERN
1325   NORTHEASTERN
                             Location.1
29        206 REDWOOD ST\nBaltimore, MD
39        1801 NORTH AVE\nBaltimore, MD
92     529 BELVEDERE AVE\nBaltimore, MD
111       1932 BELAIR RD\nBaltimore, MD
187    438 BELVEDERE AVE\nBaltimore, MD
220    529 BELVEDERE AVE\nBaltimore, MD
266        2701 ST LO DR\nBaltimore, MD
276      4217 ERDMAN AVE\nBaltimore, MD
289      4217 ERDMAN AVE\nBaltimore, MD
291       2101 NORTH AVE\nBaltimore, MD
362   2300 LAFAYETTE AVE\nBaltimore, MD
373         5422 YORK RD\nBaltimore, MD
383  1203 COLLINGTON AVE\nBaltimore, MD
417         5723 YORK RD\nBaltimore, MD
475    527 BELVEDERE AVE\nBaltimore, MD
545       2135 NORTH AVE\nBaltimore, MD
604         5847 YORK RD\nBaltimore, MD
616    529 BELVEDERE AVE\nBaltimore, MD
620        2201 CHASE ST\nBaltimore, MD
626       3349 BELAIR RD\nBaltimore, MD
678    529 BELVEDERE AVE\nBaltimore, MD
711     201 HOMELAND AVE\nBaltimore, MD
763      1000 HOFFMAN ST\nBaltimore, MD
777     1300 BANK STREET\nBaltimore, MD
779   1500 WASHINGTON ST\nBaltimore, MD
845        2001 BROADWAY\nBaltimore, MD
852         5100 YORK RD\nBaltimore, MD
873         4637 YORK RD\nBaltimore, MD
895       2301 BIDDLE ST\nBaltimore, MD
919     6307 1 2 YORK RD\nBaltimore, MD
940         6302 YORK RD\nBaltimore, MD
949         5928 YORK RD\nBaltimore, MD
957       3539 BELAIR RD\nBaltimore, MD
976         5002 YORK RD\nBaltimore, MD
994       2250 NORTH AVE\nBaltimore, MD
1017    1508 RUTLAND AVE\nBaltimore, MD
1018   600 BELVEDERE AVE\nBaltimore, MD
1022        5857 york rd\nBaltimore, MD
1053      2300 OLIVER ST\nBaltimore, MD
1120       2401 CHASE ST\nBaltimore, MD
1122      1400 NORTH AVE\nBaltimore, MD
1153        5722 YORK RD\nBaltimore, MD
1155   510 BELVEDERE AVE\nBaltimore, MD
1159     1201 POTOMAC ST\nBaltimore, MD
1186     2015 FEDERAL ST\nBaltimore, MD
1187     2015 FEDERAL ST\nBaltimore, MD
1198        5921 YORK RD\nBaltimore, MD
1209     1432 CHESTER ST\nBaltimore, MD
1232      3534 belair RD\nBaltimore, MD
1246   1701 ELLSWORTH ST\nBaltimore, MD
1259        1300 BANK ST\nBaltimore, MD
1287        6304 YORK RD\nBaltimore, MD
1298        5615 YORK RD\nBaltimore, MD
1304     4502 ERDMAN AVE\nBaltimore, MD
1312        4515 YORK RD\nBaltimore, MD
1319        5926 YORK RD\nBaltimore, MD
1320        5407 YORK RD\nBaltimore, MD
1323        5916 YORK RD\nBaltimore, MD
1325   3300 LAWNVIEW AVE\nBaltimore, MD
     X2010.Census.Neighborhoods
29                           NA
39                           NA
92                           NA
111                          NA
187                          NA
220                          NA
266                          NA
276                          NA
289                          NA
291                          NA
362                          NA
373                          NA
383                          NA
417                          NA
475                          NA
545                          NA
604                          NA
616                          NA
620                          NA
626                          NA
678                          NA
711                          NA
763                          NA
777                          NA
779                          NA
845                          NA
852                          NA
873                          NA
895                          NA
919                          NA
940                          NA
949                          NA
957                          NA
976                          NA
994                          NA
1017                         NA
1018                         NA
1022                         NA
1053                         NA
1120                         NA
1122                         NA
1153                         NA
1155                         NA
1159                         NA
1186                         NA
1187                         NA
1198                         NA
1209                         NA
1232                         NA
1246                         NA
1259                         NA
1287                         NA
1298                         NA
1304                         NA
1312                         NA
1319                         NA
1320                         NA
1323                         NA
1325                         NA
     X2010.Census.Wards.Precincts
29                             NA
39                             NA
92                             NA
111                            NA
187                            NA
220                            NA
266                            NA
276                            NA
289                            NA
291                            NA
362                            NA
373                            NA
383                            NA
417                            NA
475                            NA
545                            NA
604                            NA
616                            NA
620                            NA
626                            NA
678                            NA
711                            NA
763                            NA
777                            NA
779                            NA
845                            NA
852                            NA
873                            NA
895                            NA
919                            NA
940                            NA
949                            NA
957                            NA
976                            NA
994                            NA
1017                           NA
1018                           NA
1022                           NA
1053                           NA
1120                           NA
1122                           NA
1153                           NA
1155                           NA
1159                           NA
1186                           NA
1187                           NA
1198                           NA
1209                           NA
1232                           NA
1246                           NA
1259                           NA
1287                           NA
1298                           NA
1304                           NA
1312                           NA
1319                           NA
1320                           NA
1323                           NA
1325                           NA
     Zip.Codes
29          NA
39          NA
92          NA
111         NA
187         NA
220         NA
266         NA
276         NA
289         NA
291         NA
362         NA
373         NA
383         NA
417         NA
475         NA
545         NA
604         NA
616         NA
620         NA
626         NA
678         NA
711         NA
763         NA
777         NA
779         NA
845         NA
852         NA
873         NA
895         NA
919         NA
940         NA
949         NA
957         NA
976         NA
994         NA
1017        NA
1018        NA
1022        NA
1053        NA
1120        NA
1122        NA
1153        NA
1155        NA
1159        NA
1186        NA
1187        NA
1198        NA
1209        NA
1232        NA
1246        NA
1259        NA
1287        NA
1298        NA
1304        NA
1312        NA
1319        NA
1320        NA
1323        NA
1325        NA
```

# Cross tabs
```R
# Summaries of the datasets. Berkeley Admissions
> data(UCBAdmissions)
> DF = as.data.frame(UCBAdmissions)
> summary(DF)
      Admit       Gender   Dept 
 Admitted:12   Male  :12   A:4  
 Rejected:12   Female:12   B:4  
                           C:4  
                           D:4  
                           E:4  
                           F:4  
      Freq      
 Min.   :  8.0  
 1st Qu.: 80.0  
 Median :170.0  
 Mean   :188.6  
 3rd Qu.:302.5  
 Max.   :512.0
# Identify where the relationships exist in this dataset
> xt <- xtabs(Freq ~ Gender + Admit,data=DF)
> xt
        Admit
Gender   Admitted Rejected
  Male       1198     1493
  Female      557     1278
```

# Flat tables
```R
# Cross tabs for a larger number of variables
> warpbreaks$replicate <- rep(1:9, len = 54)
> xt = xtabs(breaks ~.,data=warpbreaks)
> xt
, , replicate = 1

    tension
wool  L  M  H
   A 26 18 36
   B 27 42 20

, , replicate = 2

    tension
wool  L  M  H
   A 30 21 21
   B 14 26 21

, , replicate = 3

    tension
wool  L  M  H
   A 54 29 24
   B 29 19 24

, , replicate = 4

    tension
wool  L  M  H
   A 25 17 18
   B 19 16 17

, , replicate = 5

    tension
wool  L  M  H
   A 70 12 10
   B 29 39 13

, , replicate = 6

    tension
wool  L  M  H
   A 52 18 43
   B 31 28 15

, , replicate = 7

    tension
wool  L  M  H
   A 51 35 28
   B 41 21 15

, , replicate = 8

    tension
wool  L  M  H
   A 26 30 15
   B 20 39 16

, , replicate = 9

    tension
wool  L  M  H
   A 67 36 26
   B 44 29 28
# Make flat tables taking cross tabs and applying f table command
> ftable(xt)
             replicate  1  2  3  4  5  6  7  8  9
wool tension                                     
A    L                 26 30 54 25 70 52 51 26 67
     M                 18 21 29 17 12 18 35 30 36
     H                 36 21 24 18 10 43 28 15 26
B    L                 27 14 29 19 29 31 41 20 44
     M                 42 26 19 16 39 28 21 39 29
     H                 20 21 24 17 13 15 15 16 28
```

# Size of a data set
```R
# Use object size command to determine the size of a data set
> fakeData = rnorm(1e5)
> object.size(fakeData)
800048 bytes
> print(object.size(fakeData),units="MB")
0.8 Mb
```
