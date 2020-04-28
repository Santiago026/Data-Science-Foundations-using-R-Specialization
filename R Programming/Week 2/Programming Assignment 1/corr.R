
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

> corr <- function(directory, threshold = 0) {
+ files <- (Sys.glob("specdata//*.csv"));
+ correlations <- c()
+ for (file in files) {
+ file_data <- read.csv(file, sep = ",");
+ complete_cases <- file_data[complete.cases(file_data),];
+ if (nrow(complete_cases) > threshold) {
+ correlations <- c(correlations, cor(complete_cases$sulfate, complete_cases$nitrate))
+         }
+     }
+     
+     return(correlations)
+ }
> cr <- corr("specdata")
> cr <- sort(cr)
> RNGversion("3.5.1")
Warning message:
In RNGkind("Mersenne-Twister", "Inversion", "Rounding") :
  non-uniform 'Rounding' sampler used
> set.seed(868)
> out <- round(cr[sample(length(cr), 5)], 4)
> print(out)
[1]  0.2688  0.1127 -0.0085  0.4586  0.0447
> cr <- corr("specdata", 129)
> cr <- sort(cr)
> n <- length(cr)
> RNGversion("3.5.1")
Warning message:
In RNGkind("Mersenne-Twister", "Inversion", "Rounding") :
  non-uniform 'Rounding' sampler used
> set.seed(197)
> out <- c(n, round(cr[sample(n, 5)], 4))
> print(out)
[1] 243.0000   0.2540   0.0504  -0.1462  -0.1680   0.5969
> cr <- corr("specdata", 2000)
> n <- length(cr)
> cr <- corr("specdata", 1000)
> cr <- sort(cr)
> print(c(n, round(cr, 4)))
[1]  0.0000 -0.0190  0.0419  0.1901
> 
