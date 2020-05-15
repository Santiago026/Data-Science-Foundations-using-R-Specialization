# Subsetting - quick review
```R
> set.seed(13435)
> x <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
> x <- x[sample(1:5),]; x$var2[c(1,3)]=NA
> x
  var1 var2 var3
5    2   NA   11
4    4   10   12
1    3   NA   14
2    1    7   15
3    5    6   13
> x[,1]
[1] 2 4 3 1 5
> x[,"var1"]
[1] 2 4 3 1 5
> x[1:2,"var2"]
[1] NA 10
```

# Logical ands and ors
```R
> x[(x$var1 <= 3 & x$var3 > 11),]
  var1 var2 var3
1    3   NA   14
2    1    7   15
> x[(x$var1 <= 3 | x$var3 > 15),]
  var1 var2 var3
5    2   NA   11
1    3   NA   14
2    1    7   15
```

# Dealing with missing values
```R
> x[which(x$var2 > 8),]
  var1 var2 var3
4    4   10   12
```

# Sorting
```R
> sort(x$var1)
[1] 1 2 3 4 5
> sort(x$var1,decreasing=TRUE)
[1] 5 4 3 2 1
> sort(x$var2,na.last=TRUE)
[1]  
6  7 10 NA NA
```

# Ordering
```R
> x[order(x$var1),]
  var1 var2 var3
2    1    7   15
5    2   NA   11
1    3   NA   14
4    4   10   12
3    5    6   13
```

# Ordering with plyr
```R
> install.packages("plyr")
> library(plyr)
> arrange(x,var1)
  var1 var2 var3
1    1    7   15
2    2   NA   11
3    3   NA   14
4    4   10   12
5    5    6   13
> arrange(x,desc(var1))
  var1 var2 var3
1    5    6   13
2    4   10   12
3    3   NA   14
4    2   NA   11
5    1    7   15
```

# Adding Rows and Columns
```R
> x$var4 <- rnorm(5)
> x
  var1 var2 var3       var4
5    2   NA   11 -0.4150458
4    4   10   12  2.5437602
1    3   NA   14  1.5545298
2    1    7   15 -0.6192328
3    5    6   13 -0.9261035
> y <- cbind(x,rnorm(5))
> y
  var1 var2 var3       var4
5    2   NA   11 -0.4150458
4    4   10   12  2.5437602
1    3   NA   14  1.5545298
2    1    7   15 -0.6192328
3    5    6   13 -0.9261035
     rnorm(5)
5 -0.66549949
4 -0.02166735
1 -0.17411953
2  0.23900438
3 -1.83245959
```

# Notes and further resources
- R Programming in the Data Science Track
- Andrew Jaffe's lecture notes [here](http://www.biostat.jhsph.edu/~ajaffe/lec_winterR/Lecture%202.pdf)



