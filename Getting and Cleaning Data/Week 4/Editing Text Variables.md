# Editing Text Variables
### Concepts
- ``` splitNames() ```
  - Allows you to remove periods from dataframes
- ``` sub() ```
  - Substitute out characters
- ``` gsub() ```
  - Remove multiple instances of a character
- ``` grep() ```
- ``` grepl() ```
- ``` library(stringr) ```
- ``` nchar() ```
- ``` substr() ```
- ``` paste() ```
- ``` paste0() ```
- ``` str_trim() ```

## Example: Baltimore Camera Data
```R
# Download the dataset from the web and create a directory if there already isn't one
> if(!file.exists("./data")){dir.create("./data")}
> fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
> download.file(fileUrl,destfile="./data/cameras.csv",method="curl")
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  9927    0  9927    0     0   4963      0 --:--:--  0:00:02 --:--:--  3850
# Read the file into R with read.csv
> cameraData <- read.csv("./data/cameras.csv")
# Look at the names of the camera data. Look at the camera names column
> names(cameraData)
[1] "address"                     
[2] "direction"                   
[3] "street"                      
[4] "crossStreet"                 
[5] "intersection"                
[6] "Location.1"                  
[7] "X2010.Census.Neighborhoods"  
[8] "X2010.Census.Wards.Precincts"
[9] "Zip.Codes"         
# Make the names all only be lower case letters
> tolower(names(cameraData))
[1] "address"                     
[2] "direction"                   
[3] "street"                      
[4] "crossstreet"                 
[5] "intersection"                
[6] "location.1"                  
[7] "x2010.census.neighborhoods"  
[8] "x2010.census.wards.precincts"
[9] "zip.codes"
```

# Fixing character vectors - strsplit()
- Good for automatically splitting variable names
- Important parameters: x, split
```R
# Seperate values that have periods
> splitNames = strsplit(names(cameraData),"\\.")
# Look at the 5th element
> splitNames[[5]]
[1] "intersection"
# Look at the 6th element
> splitNames[[6]]
[1] "Location" "1"
```

# Quick aside-lists
```R
> mylist <- list(letters = c("A", "b", "c"), numbers = 1:3, matrix(1:25, ncol = 5))
> head(mylist)
$letters
[1] "A" "b" "c"

$numbers
[1] 1 2 3

[[3]]
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    6   11   16   21
[2,]    2    7   12   17   22
[3,]    3    8   13   18   23
[4,]    4    9   14   19   24
[5,]    5   10   15   20   25

> mylist[1]
$letters
[1] "A" "b" "c"

> mylist$letters
[1] "A" "b" "c"
> mylist[[1]]
[1] "A" "b" "c"
```

# Fixing character vectors - sapply()
- Applies a function to each element in a vector or list
- Important parameters: X,FUN
```R
# Split the 6th element and the first element after the period. Get the name of the 6th element
> splitNames[[6]][[1]]
[1] "Location"
# Get the firset element of the list splitNames
> firstElement <- function(x){x[1]}
> sapply(splitNames,firstElement)
[1] "address"      "direction"   
[3] "street"       "crossStreet" 
[5] "intersection" "Location"    
[7] "X2010"        "X2010"       
[9] "Zip" 
```

# Finding values - grep(),grepl()
```R
# Grep looks through data for where the variable exists; is this case Alameda
> grep("Alameda", cameraData$intersection)
[1] 65 69 79
# grepl() command will look for the variable and create a table of its values
> table(grepl("Alameda",cameraData$))
> table(grepl("Alameda",cameraData$intersection))

FALSE  TRUE 
   77     3 
# Subset; find all of the cases that alameda appears in the intersections. And where it doesn't appear
> cameraData2 <- cameraData[!grepl("Alameda",cameraData$intersection),]
```

# More on grep()
```R
# Return the values where Alameda appears
> grep("Alameda",cameraData$intersection,value=TRUE)
[1] "E 33rd  & The Alameda"   
[2] "The Alameda  & 33rd St"  
[3] "Harford \n & The Alameda"
# Look for values that don't appear
> grep("JeffStreet",cameraData$intersection)
integer(0)
# Check to see if a value is in a vector
> length(grep("JeffStreet",cameraData$intersection))
[1] 0
```
http://www.biostat.jhsph.edu/~ajaffe/lec_winterR/Lecture%203.pdf

# More useful string functions
```R
# Load stringr package
> library(stringr)
# Tells you the number of characters that appear in a particular string
> nchar("Jeffrey Leek")
[1] 12
# Find the first through the seventh letters
> substr("Jeffrey Leek",1,7)
[1] "Jeffrey"
# Paste two strings together
> paste("Jeffrey","Leek")
[1] "Jeffrey Leek"
#  Paste thigns together with no space in between
> paste0("Jeffrey", "Leek")
# Eliminate spaces/trim excess space
[1] "JeffreyLeek"
> str_trim("Jeff    ")
[1] "Jeff"
```

# Important points about text in data sets
- Names of variables should be:
  - All lower case when possible
  - Descriptive (Diagnosis versus Dx)
  - Not duplicated
  - Not have underscores or dots or white spaces
- Variables with character values
  - Should usually be made into factor variables (depends on application)
  - Should be descriptive (use TRUE/FALSE instead of 0/1 and Male/Female versus 0/1 or M/F)
