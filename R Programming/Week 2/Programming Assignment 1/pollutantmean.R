
R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> pollutantmean <- function(directory, pollutant, id = 1:332) {
+ files <- (Sys.glob("specdata//*.csv"))[id];
+ combined_data <- c()
+ for (file in files) {
+ file_data <- read.csv(file, sep = ",");
+ pollutant_data <- file_data[,pollutant];
+ pollutant_data <- pollutant_data[!is.na(pollutant_data)]
+ combined_data <- c(combined_data, pollutant_data)
+     }
+     
+     return(mean(combined_data));
+ }
> pollutantmean("specdata", "sulfate", 1:10)
[1] 4.064128
> pollutantmean("specdata", "nitrate", 70:72)
[1] 1.706047
> pollutantmean("specdata", "sulfate", 34)
[1] 1.477143
> 
