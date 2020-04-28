
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

> complete <- function(directory, id = 1:332) {
+ files <- (Sys.glob("specdata//*.csv"));
+ nobs <- c();
+ for (index in id) {
+ file_data <- read.csv(files[index], sep = ",");
+ complete_cases <- file_data[complete.cases(file_data),];
+ nobs <- c(nobs, nrow(complete_cases));
+ }
+     
+     return(data.frame(cbind(id, nobs)));
+ }
> cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
> print(cc$nobs)
[1] 228 148 124 165 104 460 232
> cc <- complete("specdata", 54)
> print(cc$nobs)
[1] 219
> RNGversion("3.5.1")
Warning message:
In RNGkind("Mersenne-Twister", "Inversion", "Rounding") :
  non-uniform 'Rounding' sampler used
> set.seed(42)
> cc <- complete("specdata", 332:1)
> use <- sample(332, 10)
> print(cc[use, "nobs"])
 [1] 711 135  74 445 178  73  49   0 687 237
> 
