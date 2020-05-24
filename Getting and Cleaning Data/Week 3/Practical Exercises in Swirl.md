# During this week of the course you should complete the following lessons in the Getting and Cleaning Data swirl course:
- Manipulating Data with dplyr
- Grouping and Chaining with dplyr
- Tidying Data with tidyr

# Practice Programming Assignment: swirl Lesson 1: Manipulating Data with dplyr
```R
> install.packages("swirl")
Installing package into ‘D:/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://ftp.osuosl.org/pub/cran/bin/windows/contrib/3.6/swirl_2.4.5.zip'
Content type 'application/zip' length 350269 bytes (342 KB)
downloaded 342 KB

package ‘swirl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Chris Norgaard\AppData\Local\Temp\RtmpIDTUc4\downloaded_packages
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> install_course("Getting and Cleaning Data")

  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |                                                                      |   1%
  |                                                                            
  |=                                                                     |   1%
  |                                                                            
  |=                                                                     |   2%
  |                                                                            
  |==                                                                    |   2%
  |                                                                            
  |==                                                                    |   3%
  |                                                                            
  |==                                                                    |   4%
  |                                                                            
  |===                                                                   |   4%
  |                                                                            
  |===                                                                   |   5%
  |                                                                            
  |====                                                                  |   5%
  |                                                                            
  |====                                                                  |   6%
  |                                                                            
  |=====                                                                 |   6%
  |                                                                            
  |=====                                                                 |   7%
  |                                                                            
  |=====                                                                 |   8%
  |                                                                            
  |======                                                                |   8%
  |                                                                            
  |======                                                                |   9%
  |                                                                            
  |=======                                                               |   9%
  |                                                                            
  |=======                                                               |  10%
  |                                                                            
  |=======                                                               |  11%
  |                                                                            
  |========                                                              |  11%
  |                                                                            
  |========                                                              |  12%
  |                                                                            
  |=========                                                             |  12%
  |                                                                            
  |=========                                                             |  13%
  |                                                                            
  |=========                                                             |  14%
  |                                                                            
  |==========                                                            |  14%
  |                                                                            
  |==========                                                            |  15%
  |                                                                            
  |===========                                                           |  15%
  |                                                                            
  |===========                                                           |  16%
  |                                                                            
  |============                                                          |  16%
  |                                                                            
  |============                                                          |  17%
  |                                                                            
  |============                                                          |  18%
  |                                                                            
  |=============                                                         |  18%
  |                                                                            
  |=============                                                         |  19%
  |                                                                            
  |==============                                                        |  19%
  |                                                                            
  |==============                                                        |  20%
  |                                                                            
  |==============                                                        |  21%
  |                                                                            
  |===============                                                       |  21%
  |                                                                            
  |===============                                                       |  22%
  |                                                                            
  |================                                                      |  22%
  |                                                                            
  |================                                                      |  23%
  |                                                                            
  |================                                                      |  24%
  |                                                                            
  |=================                                                     |  24%
  |                                                                            
  |=================                                                     |  25%
  |                                                                            
  |==================                                                    |  25%
  |                                                                            
  |==================                                                    |  26%
  |                                                                            
  |===================                                                   |  26%
  |                                                                            
  |===================                                                   |  27%
  |                                                                            
  |===================                                                   |  28%
  |                                                                            
  |====================                                                  |  28%
  |                                                                            
  |====================                                                  |  29%
  |                                                                            
  |=====================                                                 |  29%
  |                                                                            
  |=====================                                                 |  30%
  |                                                                            
  |=====================                                                 |  31%
  |                                                                            
  |======================                                                |  31%
  |                                                                            
  |======================                                                |  32%
  |                                                                            
  |=======================                                               |  32%
  |                                                                            
  |=======================                                               |  33%
  |                                                                            
  |========================                                              |  34%
  |                                                                            
  |========================                                              |  35%
  |                                                                            
  |=========================                                             |  35%
  |                                                                            
  |=========================                                             |  36%
  |                                                                            
  |==========================                                            |  36%
  |                                                                            
  |==========================                                            |  37%
  |                                                                            
  |==========================                                            |  38%
  |                                                                            
  |===========================                                           |  38%
  |                                                                            
  |===========================                                           |  39%
  |                                                                            
  |============================                                          |  39%
  |                                                                            
  |============================                                          |  40%
  |                                                                            
  |============================                                          |  41%
  |                                                                            
  |=============================                                         |  41%
  |                                                                            
  |=============================                                         |  42%
  |                                                                            
  |==============================                                        |  42%
  |                                                                            
  |==============================                                        |  43%
  |                                                                            
  |==============================                                        |  44%
  |                                                                            
  |===============================                                       |  44%
  |                                                                            
  |===============================                                       |  45%
  |                                                                            
  |================================                                      |  45%
  |                                                                            
  |================================                                      |  46%
  |                                                                            
  |=================================                                     |  47%
  |                                                                            
  |=================================                                     |  48%
  |                                                                            
  |==================================                                    |  48%
  |                                                                            
  |==================================                                    |  49%
  |                                                                            
  |===================================                                   |  49%
  |                                                                            
  |===================================                                   |  50%
  |                                                                            
  |===================================                                   |  51%
  |                                                                            
  |====================================                                  |  51%
  |                                                                            
  |====================================                                  |  52%
  |                                                                            
  |=====================================                                 |  52%
  |                                                                            
  |=====================================                                 |  53%
  |                                                                            
  |=====================================                                 |  54%
  |                                                                            
  |======================================                                |  54%
  |                                                                            
  |======================================                                |  55%
  |                                                                            
  |=======================================                               |  55%
  |                                                                            
  |=======================================                               |  56%
  |                                                                            
  |========================================                              |  56%
  |                                                                            
  |========================================                              |  57%
  |                                                                            
  |========================================                              |  58%
  |                                                                            
  |=========================================                             |  58%
  |                                                                            
  |=========================================                             |  59%
  |                                                                            
  |==========================================                            |  59%
  |                                                                            
  |==========================================                            |  60%
  |                                                                            
  |==========================================                            |  61%
  |                                                                            
  |===========================================                           |  61%
  |                                                                            
  |===========================================                           |  62%
  |                                                                            
  |============================================                          |  62%
  |                                                                            
  |============================================                          |  63%
  |                                                                            
  |============================================                          |  64%
  |                                                                            
  |=============================================                         |  64%
  |                                                                            
  |=============================================                         |  65%
  |                                                                            
  |==============================================                        |  65%
  |                                                                            
  |==============================================                        |  66%
  |                                                                            
  |===============================================                       |  66%
  |                                                                            
  |===============================================                       |  67%
  |                                                                            
  |===============================================                       |  68%
  |                                                                            
  |================================================                      |  68%
  |                                                                            
  |================================================                      |  69%
  |                                                                            
  |=================================================                     |  69%
  |                                                                            
  |=================================================                     |  70%
  |                                                                            
  |=================================================                     |  71%
  |                                                                            
  |==================================================                    |  71%
  |                                                                            
  |==================================================                    |  72%
  |                                                                            
  |===================================================                   |  72%
  |                                                                            
  |===================================================                   |  73%
  |                                                                            
  |===================================================                   |  74%
  |                                                                            
  |====================================================                  |  74%
  |                                                                            
  |====================================================                  |  75%
  |                                                                            
  |=====================================================                 |  75%
  |                                                                            
  |=====================================================                 |  76%
  |                                                                            
  |======================================================                |  77%
  |                                                                            
  |======================================================                |  78%
  |                                                                            
  |=======================================================               |  78%
  |                                                                            
  |=======================================================               |  79%
  |                                                                            
  |========================================================              |  79%
  |                                                                            
  |========================================================              |  80%
  |                                                                            
  |========================================================              |  81%
  |                                                                            
  |=========================================================             |  81%
  |                                                                            
  |=========================================================             |  82%
  |                                                                            
  |==========================================================            |  82%
  |                                                                            
  |==========================================================            |  83%
  |                                                                            
  |===========================================================           |  84%
  |                                                                            
  |===========================================================           |  85%
  |                                                                            
  |============================================================          |  85%
  |                                                                            
  |============================================================          |  86%
  |                                                                            
  |=============================================================         |  86%
  |                                                                            
  |=============================================================         |  87%
  |                                                                            
  |=============================================================         |  88%
  |                                                                            
  |==============================================================        |  88%
  |                                                                            
  |==============================================================        |  89%
  |                                                                            
  |===============================================================       |  89%
  |                                                                            
  |===============================================================       |  90%
  |                                                                            
  |===============================================================       |  91%
  |                                                                            
  |================================================================      |  91%
  |                                                                            
  |================================================================      |  92%
  |                                                                            
  |=================================================================     |  92%
  |                                                                            
  |=================================================================     |  93%
  |                                                                            
  |=================================================================     |  94%
  |                                                                            
  |==================================================================    |  94%
  |                                                                            
  |==================================================================    |  95%
  |                                                                            
  |===================================================================   |  95%
  |                                                                            
  |===================================================================   |  96%
  |                                                                            
  |====================================================================  |  96%
  |                                                                            
  |====================================================================  |  97%
  |                                                                            
  |====================================================================  |  98%
  |                                                                            
  |===================================================================== |  98%
  |                                                                            
  |===================================================================== |  99%
  |                                                                            
  |======================================================================|  99%
  |                                                                            
  |======================================================================| 100%

| Course installed successfully!

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same
| name as you did then. If you are new, call yourself something unique.

What shall I call you? Chris

| Thanks, Chris. Let's cover a couple of quick housekeeping items before we
| begin our first lesson. First of all, you should know that when you see
| '...', that means you should press Enter when you are done reading and ready
| to continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to
| select from a list, that means it's your turn to enter a response, then press
| Enter to continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 1

| You can exit swirl and return to the R prompt (>) at any time by pressing the
| Esc key. If you are already at the prompt, type bye() to exit and save your
| progress. When you exit properly, you'll see a short message letting you know
| you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore
| what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!

...

| Please choose a course, or type 0 to exit swirl.

1: Getting and Cleaning Data
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Manipulating Data with dplyr
2: Grouping and Chaining with dplyr
3: Tidying Data with tidyr
4: Dates and Times with lubridate

Selection: 1

| Attempting to load lesson dependencies...

| Package ‘dplyr’ loaded correctly!


  |                                                                            
  |                                                                      |   0%

| In this lesson, you'll learn how to manipulate data using dplyr. dplyr is a
| fast and powerful R package written by Hadley Wickham and Romain Francois
| that provides a consistent and concise grammar for manipulating tabular data.

...


  |                                                                            
  |=                                                                     |   2%
| One unique aspect of dplyr is that the same set of tools allow you to work
| with tabular data from a variety of sources, including data frames, data
| tables, databases and multidimensional arrays. In this lesson, we'll focus on
| data frames, but everything you learn will apply equally to other formats.

...


  |                                                                            
  |==                                                                    |   3%
| As you may know, "CRAN is a network of ftp and web servers around the world
| that store identical, up-to-date, versions of code and documentation for R"
| (http://cran.rstudio.com/). RStudio maintains one of these so-called 'CRAN
| mirrors' and they generously make their download logs publicly available
| (http://cran-logs.rstudio.com/). We'll be working with the log from July 8,
| 2014, which contains information on roughly 225,000 package downloads.

...


  |                                                                            
  |====                                                                  |   5%
| I've created a variable called path2csv, which contains the full file path to
| the dataset. Call read.csv() with two arguments, path2csv and
| stringsAsFactors = FALSE, and save the result in a new variable called mydf.
| Check ?read.csv if you need help.

> ?read.csv
starting httpd help server ... done
> skip()

| Entering the following correct answer for you...

> mydf <- read.csv(path2csv, stringsAsFactors = FALSE)

| Nice work!


  |                                                                            
  |=====                                                                 |   7%
| Use dim() to look at the dimensions of mydf.

> dim(mydf)
[1] 225468     11

| Nice work!


  |                                                                            
  |======                                                                |   8%
| Now use head() to preview the data.

> head(mydf)
  X       date     time   size r_version r_arch      r_os      package version
1 1 2014-07-08 00:54:41  80589     3.1.0 x86_64   mingw32    htmltools   0.2.4
2 2 2014-07-08 00:59:53 321767     3.1.0 x86_64   mingw32      tseries 0.10-32
3 3 2014-07-08 00:47:13 748063     3.1.0 x86_64 linux-gnu        party  1.0-15
4 4 2014-07-08 00:48:05 606104     3.1.0 x86_64 linux-gnu        Hmisc  3.14-4
5 5 2014-07-08 00:46:50  79825     3.0.2 x86_64 linux-gnu       digest   0.6.4
6 6 2014-07-08 00:48:04  77681     3.1.0 x86_64 linux-gnu randomForest   4.6-7
  country ip_id
1      US     1
2      US     2
3      US     3
4      US     3
5      CA     4
6      US     3

| You nailed it! Good job!


  |                                                                            
  |=======                                                               |  10%
| The dplyr package was automatically installed (if necessary) and loaded at
| the beginning of this lesson. Normally, this is something you would have to
| do on your own. Just to build the habit, type library(dplyr) now to load the
| package again.

> library(dplyr)

| You got it!


  |                                                                            
  |========                                                              |  12%
| It's important that you have dplyr version 0.4.0 or later. To confirm this,
| type packageVersion("dplyr").

> packageVerion("dplyr")
Error in packageVerion("dplyr") : could not find function "packageVerion"
> packageVersion("dplyr")
[1] ‘0.8.5’

| You are quite good my friend!


  |                                                                            
  |=========                                                             |  13%
| If your dplyr version is not at least 0.4.0, then you should hit the Esc key
| now, reinstall dplyr, then resume this lesson where you left off.

...


  |                                                                            
  |==========                                                            |  15%
| The first step of working with data in dplyr is to load the data into what
| the package authors call a 'data frame tbl' or 'tbl_df'. Use the following
| code to create a new tbl_df called cran:
| 
| cran <- tbl_df(mydf).

> cran <- tabl_df(mydf)
Error in tabl_df(mydf) : could not find function "tabl_df"
> cran <- tbl_df(mydf)

| All that hard work is paying off!


  |                                                                            
  |============                                                          |  17%
| To avoid confusion and keep things running smoothly, let's remove the
| original data frame from your workspace with rm("mydf").

> rm("mydf")

| You nailed it! Good job!


  |                                                                            
  |=============                                                         |  18%
| From ?tbl_df, "The main advantage to using a tbl_df over a regular data frame is the printing." Let's see what is meant by this. Type cran to print our tbl_df
| to the console.

> cran
# A tibble: 225,468 x 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08 00:46:50   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9     9 2014-07-08 00:54:58    5928 <NA>      <NA>   <NA>      Rcpp         0.10.4  CN          6
10    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ... with 225,458 more rows

| You are quite good my friend!


  |                                                                            
  |==============                                                        |  20%
| This output is much more informative and compact than what we would get if we printed the original data frame (mydf) to the console.

...


  |                                                                            
  |===============                                                       |  22%
| First, we are shown the class and dimensions of the dataset. Just below that, we get a preview of the data. Instead of attempting to print the entire dataset,
| dplyr just shows us the first 10 rows of data and only as many columns as fit neatly in our console. At the bottom, we see the names and classes for any variables
| that didn't fit on our screen.

...


  |                                                                            
  |================                                                      |  23%
| According to the "Introduction to dplyr" vignette written by the package authors, "The dplyr philosophy is to have small functions that each do one thing well."
| Specifically, dplyr supplies five 'verbs' that cover most fundamental data manipulation tasks: select(), filter(), arrange(), mutate(), and summarize().

...


  |                                                                            
  |==================                                                    |  25%
| Use ?select to pull up the documentation for the first of these core functions.

> ?select

| That's correct!


  |                                                                            
  |===================                                                   |  27%
| Help files for the other functions are accessible in the same way.

...


  |                                                                            
  |====================                                                  |  28%
| As may often be the case, particularly with larger datasets, we are only interested in some of the variables. Use select(cran, ip_id, package, country) to select
| only the ip_id, package, and country variables from the cran dataset.

> select(cran, ip_id, package, country)
# A tibble: 225,468 x 3
   ip_id package      country
   <int> <chr>        <chr>  
 1     1 htmltools    US     
 2     2 tseries      US     
 3     3 party        US     
 4     3 Hmisc        US     
 5     4 digest       CA     
 6     3 randomForest US     
 7     3 plyr         US     
 8     5 whisker      US     
 9     6 Rcpp         CN     
10     7 hflights     US     
# ... with 225,458 more rows

| Keep working like that and you'll get there!


  |                                                                            
  |=====================                                                 |  30%
| The first thing to notice is that we don't have to type cran$ip_id, cran$package, and cran$country, as we normally would when referring to columns of a data
| frame. The select() function knows we are referring to columns of the cran dataset.

...


  |                                                                            
  |======================                                                |  32%
| Also, note that the columns are returned to us in the order we specified, even though ip_id is the rightmost column in the original dataset.

...


  |                                                                            
  |=======================                                               |  33%
| Recall that in R, the `:` operator provides a compact notation for creating a sequence of numbers. For example, try 5:20.

> 5:20
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Keep up the great work!


  |                                                                            
  |========================                                              |  35%
| Normally, this notation is reserved for numbers, but select() allows you to specify a sequence of columns this way, which can save a bunch of typing. Use
| select(cran, r_arch:country) to select all columns starting from r_arch and ending with country.

> select(cran, r_arch:country)
# A tibble: 225,468 x 5
   r_arch r_os      package      version country
   <chr>  <chr>     <chr>        <chr>   <chr>  
 1 x86_64 mingw32   htmltools    0.2.4   US     
 2 x86_64 mingw32   tseries      0.10-32 US     
 3 x86_64 linux-gnu party        1.0-15  US     
 4 x86_64 linux-gnu Hmisc        3.14-4  US     
 5 x86_64 linux-gnu digest       0.6.4   CA     
 6 x86_64 linux-gnu randomForest 4.6-7   US     
 7 x86_64 linux-gnu plyr         1.8.1   US     
 8 x86_64 linux-gnu whisker      0.3-2   US     
 9 <NA>   <NA>      Rcpp         0.10.4  CN     
10 x86_64 linux-gnu hflights     0.1     US     
# ... with 225,458 more rows

| That's a job well done!


  |                                                                            
  |==========================                                            |  37%
| We can also select the same columns in reverse order. Give it a try.

> skip()

| Entering the following correct answer for you...

> select(cran, country:r_arch)
# A tibble: 225,468 x 5
   country version package      r_os      r_arch
   <chr>   <chr>   <chr>        <chr>     <chr> 
 1 US      0.2.4   htmltools    mingw32   x86_64
 2 US      0.10-32 tseries      mingw32   x86_64
 3 US      1.0-15  party        linux-gnu x86_64
 4 US      3.14-4  Hmisc        linux-gnu x86_64
 5 CA      0.6.4   digest       linux-gnu x86_64
 6 US      4.6-7   randomForest linux-gnu x86_64
 7 US      1.8.1   plyr         linux-gnu x86_64
 8 US      0.3-2   whisker      linux-gnu x86_64
 9 CN      0.10.4  Rcpp         <NA>      <NA>  
10 US      0.1     hflights     linux-gnu x86_64
# ... with 225,458 more rows

| Keep working like that and you'll get there!


  |                                                                            
  |===========================                                           |  38%
| Print the entire dataset again, just to remind yourself of what it looks like. You can do this at anytime during the lesson.

> print(cran)
# A tibble: 225,468 x 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08 00:46:50   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9     9 2014-07-08 00:54:58    5928 <NA>      <NA>   <NA>      Rcpp         0.10.4  CN          6
10    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ... with 225,458 more rows

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Print cran to the console to remind yourself what it looks like.

> print("cran")
[1] "cran"

| Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.

| Print cran to the console to remind yourself what it looks like.

> skip()

| Entering the following correct answer for you...

> cran
# A tibble: 225,468 x 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08 00:46:50   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9     9 2014-07-08 00:54:58    5928 <NA>      <NA>   <NA>      Rcpp         0.10.4  CN          6
10    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ... with 225,458 more rows

| You nailed it! Good job!


  |                                                                            
  |============================                                          |  40%
| Instead of specifying the columns we want to keep, we can also specify the columns we want to throw away. To see how this works, do select(cran, -time) to omit
| the time column.

> select(cran, -time)
# A tibble: 225,468 x 10
       X date          size r_version r_arch r_os      package      version country ip_id
   <int> <chr>        <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9     9 2014-07-08    5928 <NA>      <NA>   <NA>      Rcpp         0.10.4  CN          6
10    10 2014-07-08 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ... with 225,458 more rows

| That's correct!


  |                                                                            
  |=============================                                         |  42%
| The negative sign in front of time tells select() that we DON'T want the time column. Now, let's combine strategies to omit all columns from X through size
| (X:size). To see how this might work, let's look at a numerical example with -5:20.

> skip()

| Entering the following correct answer for you...

> -5:20
 [1] -5 -4 -3 -2 -1  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are amazing!


  |                                                                            
  |==============================                                        |  43%
| Oops! That gaves us a vector of numbers from -5 through 20, which is not what we want. Instead, we want to negate the entire sequence of numbers from 5 through
| 20, so that we get -5, -6, -7, ... , -18, -19, -20. Try the same thing, except surround 5:20 with parentheses so that R knows we want it to first come up with the
| sequence of numbers, then apply the negative sign to the whole thing.

> (-5:20)
 [1] -5 -4 -3 -2 -1  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Not quite! Try again. Or, type info() for more options.

| -(5:20) will do the job.

> -(5:20)
 [1]  -5  -6  -7  -8  -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20

| You nailed it! Good job!


  |                                                                            
  |================================                                      |  45%
| Use this knowledge to omit all columns X:size using select().

> select()
Error in select_(.data, .dots = compat_as_lazy_dots(...)) : 
  argument ".data" is missing, with no default
> skip()

| Entering the following correct answer for you...

> select(cran, -(X:size))
# A tibble: 225,468 x 7
   r_version r_arch r_os      package      version country ip_id
   <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9 <NA>      <NA>   <NA>      Rcpp         0.10.4  CN          6
10 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ... with 225,458 more rows

| That's a job well done!


  |                                                                            
  |=================================                                     |  47%
| Now that you know how to select a subset of columns using select(), a natural next question is "How do I select a subset of rows?" That's where the filter()
| function comes in.

...


  |                                                                            
  |==================================                                    |  48%
| Use filter(cran, package == "swirl") to select all rows for which the package variable is equal to "swirl". Be sure to use two equals signs side-by-side!

> filter(cran, package == "swirl")
# A tibble: 820 x 11
       X date       time       size r_version r_arch r_os         package version country ip_id
   <int> <chr>      <chr>     <int> <chr>     <chr>  <chr>        <chr>   <chr>   <chr>   <int>
 1    27 2014-07-08 00:17:16 105350 3.0.2     x86_64 mingw32      swirl   2.2.9   US         20
 2   156 2014-07-08 00:22:53  41261 3.1.0     x86_64 linux-gnu    swirl   2.2.9   US         66
 3   358 2014-07-08 00:13:42 105335 2.15.2    x86_64 mingw32      swirl   2.2.9   CA        115
 4   593 2014-07-08 00:59:45 105465 3.1.0     x86_64 darwin13.1.0 swirl   2.2.9   MX        162
 5   831 2014-07-08 00:55:27 105335 3.0.3     x86_64 mingw32      swirl   2.2.9   US         57
 6   997 2014-07-08 00:33:06  41261 3.1.0     x86_64 mingw32      swirl   2.2.9   US         70
 7  1023 2014-07-08 00:35:36 106393 3.1.0     x86_64 mingw32      swirl   2.2.9   BR        248
 8  1144 2014-07-08 00:00:39 106534 3.0.2     x86_64 linux-gnu    swirl   2.2.9   US        261
 9  1402 2014-07-08 00:41:41  41261 3.1.0     i386   mingw32      swirl   2.2.9   US        234
10  1424 2014-07-08 00:44:49 106393 3.1.0     x86_64 linux-gnu    swirl   2.2.9   US        301
# ... with 810 more rows

| That's a job well done!


  |                                                                            
  |===================================                                   |  50%
| Again, note that filter() recognizes 'package' as a column of cran, without you having to explicitly specify cran$package.

...


  |                                                                            
  |====================================                                  |  52%
| The == operator asks whether the thing on the left is equal to the thing on the right. If yes, then it returns TRUE. If no, then FALSE. In this case, package is
| an entire vector (column) of values, so package == "swirl" returns a vector of TRUEs and FALSEs. filter() then returns only the rows of cran corresponding to the
| TRUEs.

...


  |                                                                            
  |=====================================                                 |  53%
| You can specify as many conditions as you want, separated by commas. For example filter(cran, r_version == "3.1.1", country == "US") will return all rows of cran
| corresponding to downloads from users in the US running R version 3.1.1. Try it out.

> filter(cran, r_version == "3.1.1", country == "US")
# A tibble: 1,588 x 11
       X date       time        size r_version r_arch r_os         package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>        <chr>        <chr>   <chr>   <int>
 1  2216 2014-07-08 00:48:58  385112 3.1.1     x86_64 darwin13.1.0 colorspace   1.2-4   US        191
 2 17332 2014-07-08 03:39:57  197459 3.1.1     x86_64 darwin13.1.0 httr         0.3     US       1704
 3 17465 2014-07-08 03:25:38   23259 3.1.1     x86_64 darwin13.1.0 snow         0.3-13  US         62
 4 18844 2014-07-08 03:59:17  190594 3.1.1     x86_64 darwin13.1.0 maxLik       1.2-0   US       1533
 5 30182 2014-07-08 04:13:15   77683 3.1.1     i386   mingw32      randomForest 4.6-7   US        646
 6 30193 2014-07-08 04:06:26 2351969 3.1.1     i386   mingw32      ggplot2      1.0.0   US          8
 7 30195 2014-07-08 04:07:09  299080 3.1.1     i386   mingw32      fExtremes    3010.81 US       2010
 8 30217 2014-07-08 04:32:04  568036 3.1.1     i386   mingw32      rJava        0.9-6   US         98
 9 30245 2014-07-08 04:10:41  526858 3.1.1     i386   mingw32      LPCM         0.44-8  US          8
10 30354 2014-07-08 04:32:51 1763717 3.1.1     i386   mingw32      mgcv         1.8-1   US       2122
# ... with 1,578 more rows

| Excellent job!


  |                                                                            
  |======================================                                |  55%
| The conditions passed to filter() can make use of any of the standard comparison operators. Pull up the relevant documentation with ?Comparison (that's an
| uppercase C).

> ?comparison
No documentation for ‘comparison’ in specified packages and libraries:
you could try ‘??comparison’

| You almost had it, but not quite. Try again. Or, type info() for more options.

| ?Comparison will pull up the relevant help file.

> ?Comparison

| You are really on a roll!


  |                                                                            
  |========================================                              |  57%
| Edit your previous call to filter() to instead return rows corresponding to users in "IN" (India) running an R version that is less than or equal to "3.0.2". The
| up arrow on your keyboard may come in handy here. Don't forget your double quotes!

> filter(cran, r_version == "3.1.1", country == "india")
# A tibble: 0 x 11
# ... with 11 variables: X <int>, date <chr>, time <chr>, size <int>, r_version <chr>, r_arch <chr>, r_os <chr>, package <chr>, version <chr>, country <chr>,
#   ip_id <int>

| Give it another try. Or, type info() for more options.

| filter(cran, r_version <= "3.0.2", country == "IN") will return all rows for which r_version is less than or equal to "3.0.2" and country is equal to "IN".

> filter(cran, r_version == "3.1.1", country == "IN")
# A tibble: 1,461 x 11
       X date       time        size r_version r_arch r_os    package  version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>   <chr>    <chr>   <chr>   <int>
 1 30174 2014-07-08 04:15:55 2642631 3.1.1     i386   mingw32 Ecdat    0.2-6   IN       1934
 2 30239 2014-07-08 04:06:49  137185 3.1.1     i386   mingw32 digest   0.6.4   IN       2233
 3 30240 2014-07-08 04:06:49  106613 3.1.1     i386   mingw32 swirl    2.2.9   IN       2233
 4 30244 2014-07-08 04:16:19 1493814 3.1.1     i386   mingw32 heplots  1.0-12  IN       1934
 5 30626 2014-07-08 04:55:27  329159 3.1.1     i386   mingw32 httr     0.3     IN       1942
 6 30645 2014-07-08 04:15:59  301123 3.1.1     i386   mingw32 Matching 4.8-3.4 IN       1934
 7 30648 2014-07-08 04:15:29   17267 3.1.1     i386   mingw32 rbounds  2.0     IN       1934
 8 30690 2014-07-08 04:14:08  546123 3.1.1     i386   mingw32 Rmpfr    0.5-5   IN       1934
 9 30691 2014-07-08 04:14:19  321094 3.1.1     i386   mingw32 lavaan   0.5-16  IN       1934
10 30720 2014-07-08 04:18:58   49955 3.1.1     i386   mingw32 fts      0.9.9   IN       1934
# ... with 1,451 more rows

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| filter(cran, r_version <= "3.0.2", country == "IN") will return all rows for which r_version is less than or equal to "3.0.2" and country is equal to "IN".

>  filter(cran, r_version <= "3.0.2", country == "IN") 
# A tibble: 4,139 x 11
       X date       time         size r_version r_arch r_os      package       version   country ip_id
   <int> <chr>      <chr>       <int> <chr>     <chr>  <chr>     <chr>         <chr>     <chr>   <int>
 1   348 2014-07-08 00:44:04 10218907 3.0.0     x86_64 mingw32   BH            1.54.0-2  IN        112
 2  9990 2014-07-08 02:11:32   397497 3.0.2     x86_64 linux-gnu equateIRT     1.1       IN       1054
 3  9991 2014-07-08 02:11:32   119199 3.0.2     x86_64 linux-gnu ggdendro      0.1-14    IN       1054
 4  9992 2014-07-08 02:11:33    81779 3.0.2     x86_64 linux-gnu dfcrm         0.2-2     IN       1054
 5 10022 2014-07-08 02:19:45  1557078 2.15.0    x86_64 mingw32   RcppArmadillo 0.4.320.0 IN       1060
 6 10023 2014-07-08 02:19:46  1184285 2.15.1    i686   linux-gnu forecast      5.4       IN       1060
 7 10189 2014-07-08 02:38:06   908854 3.0.2     x86_64 linux-gnu editrules     2.7.2     IN       1054
 8 10199 2014-07-08 02:38:28   178436 3.0.2     x86_64 linux-gnu energy        1.6.1     IN       1054
 9 10200 2014-07-08 02:38:29    51811 3.0.2     x86_64 linux-gnu ENmisc        1.2-7     IN       1054
10 10201 2014-07-08 02:38:29    65245 3.0.2     x86_64 linux-gnu entropy       1.2.0     IN       1054
# ... with 4,129 more rows

| Your dedication is inspiring!


  |                                                                            
  |=========================================                             |  58%
| Our last two calls to filter() requested all rows for which some condition AND another condition were TRUE. We can also request rows for which EITHER one
| condition OR another condition are TRUE. For example, filter(cran, country == "US" | country == "IN") will gives us all rows for which the country variable equals
| either "US" or "IN". Give it a go.

> filter(cran, country == "US" | country == "IN")
# A tibble: 95,283 x 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 6     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 7     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 8    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
 9    11 2014-07-08 00:15:25  526858 3.0.2     x86_64 linux-gnu LPCM         0.44-8  US          8
10    12 2014-07-08 00:14:45 2351969 2.14.1    x86_64 linux-gnu ggplot2      1.0.0   US          8
# ... with 95,273 more rows

| You are quite good my friend!


  |                                                                            
  |==========================================                            |  60%
| Now, use filter() to fetch all rows for which size is strictly greater than (>) 100500 (no quotes, since size is numeric) AND r_os equals "linux-gnu". Hint: You
| are passing three arguments to filter(): the name of the dataset, the first condition, and the second condition.

> skip()

| Entering the following correct answer for you...

> filter(cran, size > 100500, r_os == "linux-gnu")
# A tibble: 33,683 x 11
       X date       time        size r_version r_arch r_os      package  version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>    <chr>   <chr>   <int>
 1     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party    1.0-15  US          3
 2     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc    3.14-4  US          3
 3     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr     1.8.1   US          3
 4    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights 0.1     US          7
 5    11 2014-07-08 00:15:25  526858 3.0.2     x86_64 linux-gnu LPCM     0.44-8  US          8
 6    12 2014-07-08 00:14:45 2351969 2.14.1    x86_64 linux-gnu ggplot2  1.0.0   US          8
 7    14 2014-07-08 00:15:35 3097729 3.0.2     x86_64 linux-gnu Rcpp     0.9.7   VE         10
 8    15 2014-07-08 00:14:37  568036 3.1.0     x86_64 linux-gnu rJava    0.9-6   US         11
 9    16 2014-07-08 00:15:50 1600441 3.1.0     x86_64 linux-gnu RSQLite  0.11.4  US          7
10    18 2014-07-08 00:26:59  186685 3.1.0     x86_64 linux-gnu ipred    0.9-3   DE         13
# ... with 33,673 more rows

| That's correct!


  |                                                                            
  |===========================================                           |  62%
| Finally, we want to get only the rows for which the r_version is not missing. R represents missing values with NA and these missing values can be detected using
| the is.na() function.

...


  |                                                                            
  |============================================                          |  63%
| To see how this works, try is.na(c(3, 5, NA, 10)).

> is.na(c(3, 5, NA, 10))
[1] FALSE FALSE  TRUE FALSE

| You're the best!


  |                                                                            
  |==============================================                        |  65%
| Now, put an exclamation point (!) before is.na() to change all of the TRUEs to FALSEs and all of the FALSEs to TRUEs, thus telling us what is NOT NA: !is.na(c(3,
| 5, NA, 10)).

> !is.na(c(3,
+ | 5, NA, 10))
Error: unexpected '|' in:
"!is.na(c(3,
|"
> !is.na(c(3,5,NA,10))
[1]  TRUE  TRUE FALSE  TRUE

| Excellent work!


  |                                                                            
  |===============================================                       |  67%
| Okay, ready to put all of this together? Use filter() to return all rows of cran for which r_version is NOT NA. Hint: You will need to use !is.na() as part of
| your second argument to filter().

> skip()

| Entering the following correct answer for you...

> filter(cran, !is.na(r_version))
# A tibble: 207,205 x 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08 00:46:50   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
10    11 2014-07-08 00:15:25  526858 3.0.2     x86_64 linux-gnu LPCM         0.44-8  US          8
# ... with 207,195 more rows

| That's a job well done!


  |                                                                            
  |================================================                      |  68%
| We've seen how to select a subset of columns and rows from our dataset using select() and filter(), respectively. Inherent in select() was also the ability to
| arrange our selected columns in any order we please.

...


  |                                                                            
  |=================================================                     |  70%
| Sometimes we want to order the rows of a dataset according to the values of a particular variable. This is the job of arrange().

...


  |                                                                            
  |==================================================                    |  72%
| To see how arrange() works, let's first take a subset of cran. select() all columns from size through ip_id and store the result in cran2.

> cran2 <- select(ip_id)
Error in select(ip_id) : object 'ip_id' not found
> skip()

| Entering the following correct answer for you...

> cran2 <- select(cran, size:ip_id)

| You're the best!


  |                                                                            
  |===================================================                   |  73%
| Now, to order the ROWS of cran2 so that ip_id is in ascending order (from small to large), type arrange(cran2, ip_id). You may want to make your console wide
| enough so that you can see ip_id, which is the last column.

> arrange(cran2, ip_id)
# A tibble: 225,468 x 8
     size r_version r_arch r_os         package     version country ip_id
    <int> <chr>     <chr>  <chr>        <chr>       <chr>   <chr>   <int>
 1  80589 3.1.0     x86_64 mingw32      htmltools   0.2.4   US          1
 2 180562 3.0.2     x86_64 mingw32      yaml        2.1.13  US          1
 3 190120 3.1.0     i386   mingw32      babel       0.2-6   US          1
 4 321767 3.1.0     x86_64 mingw32      tseries     0.10-32 US          2
 5  52281 3.0.3     x86_64 darwin10.8.0 quadprog    1.5-5   US          2
 6 876702 3.1.0     x86_64 linux-gnu    zoo         1.7-11  US          2
 7 321764 3.0.2     x86_64 linux-gnu    tseries     0.10-32 US          2
 8 876702 3.1.0     x86_64 linux-gnu    zoo         1.7-11  US          2
 9 321768 3.1.0     x86_64 mingw32      tseries     0.10-32 US          2
10 784093 3.1.0     x86_64 linux-gnu    strucchange 1.5-0   US          2
# ... with 225,458 more rows

| You are doing so well!


  |                                                                            
  |====================================================                  |  75%
| To do the same, but in descending order, change the second argument to desc(ip_id), where desc() stands for 'descending'. Go ahead.

> arrange(cran2, desc(ip_id))
# A tibble: 225,468 x 8
      size r_version r_arch r_os         package      version country ip_id
     <int> <chr>     <chr>  <chr>        <chr>        <chr>   <chr>   <int>
 1    5933 <NA>      <NA>   <NA>         CPE          1.4.2   CN      13859
 2  569241 3.1.0     x86_64 mingw32      multcompView 0.1-5   US      13858
 3  228444 3.1.0     x86_64 mingw32      tourr        0.5.3   NZ      13857
 4  308962 3.1.0     x86_64 darwin13.1.0 ctv          0.7-9   CN      13856
 5  950964 3.0.3     i386   mingw32      knitr        1.6     CA      13855
 6   80185 3.0.3     i386   mingw32      htmltools    0.2.4   CA      13855
 7 1431750 3.0.3     i386   mingw32      shiny        0.10.0  CA      13855
 8 2189695 3.1.0     x86_64 mingw32      RMySQL       0.9-3   US      13854
 9 4818024 3.1.0     i386   mingw32      igraph       0.7.1   US      13853
10  197495 3.1.0     x86_64 mingw32      coda         0.16-1  US      13852
# ... with 225,458 more rows

| Perseverance, that's the answer.


  |                                                                            
  |======================================================                |  77%
| We can also arrange the data according to the values of multiple variables. For example, arrange(cran2, package, ip_id) will first arrange by package names
| (ascending alphabetically), then by ip_id. This means that if there are multiple rows with the same value for package, they will be sorted by ip_id (ascending
| numerically). Try arrange(cran2, package, ip_id) now.

> arrange(cran2, package, ip_id)
# A tibble: 225,468 x 8
    size r_version r_arch r_os         package version country ip_id
   <int> <chr>     <chr>  <chr>        <chr>   <chr>   <chr>   <int>
 1 71677 3.0.3     x86_64 darwin10.8.0 A3      0.9.2   CN       1003
 2 71672 3.1.0     x86_64 linux-gnu    A3      0.9.2   US       1015
 3 71677 3.1.0     x86_64 mingw32      A3      0.9.2   IN       1054
 4 70438 3.0.1     x86_64 darwin10.8.0 A3      0.9.2   CN       1513
 5 71677 <NA>      <NA>   <NA>         A3      0.9.2   BR       1526
 6 71892 3.0.2     x86_64 linux-gnu    A3      0.9.2   IN       1542
 7 71677 3.1.0     x86_64 linux-gnu    A3      0.9.2   ZA       2925
 8 71672 3.1.0     x86_64 mingw32      A3      0.9.2   IL       3889
 9 71677 3.0.3     x86_64 mingw32      A3      0.9.2   DE       3917
10 71672 3.1.0     x86_64 mingw32      A3      0.9.2   US       4219
# ... with 225,458 more rows

| Excellent job!


  |                                                                            
  |=======================================================               |  78%
| Arrange cran2 by the following three variables, in this order: country (ascending), r_version (descending), and ip_id (ascending).

> skip()

| Entering the following correct answer for you...

> arrange(cran2, country, desc(r_version), ip_id)
# A tibble: 225,468 x 8
      size r_version r_arch r_os      package       version   country ip_id
     <int> <chr>     <chr>  <chr>     <chr>         <chr>     <chr>   <int>
 1 1556858 3.1.1     i386   mingw32   RcppArmadillo 0.4.320.0 A1       2843
 2 1823512 3.1.0     x86_64 linux-gnu mgcv          1.8-1     A1       2843
 3   15732 3.1.0     i686   linux-gnu grnn          0.1.0     A1       3146
 4 3014840 3.1.0     x86_64 mingw32   Rcpp          0.11.2    A1       3146
 5  660087 3.1.0     i386   mingw32   xts           0.9-7     A1       3146
 6  522261 3.1.0     i386   mingw32   FNN           1.1       A1       3146
 7  522263 3.1.0     i386   mingw32   FNN           1.1       A1       3146
 8 1676627 3.1.0     x86_64 linux-gnu rgeos         0.3-5     A1       3146
 9 2118530 3.1.0     x86_64 linux-gnu spacetime     1.1-0     A1       3146
10 2217180 3.1.0     x86_64 mingw32   gstat         1.0-19    A1       3146
# ... with 225,458 more rows

| You are really on a roll!


  |                                                                            
  |========================================================              |  80%
| To illustrate the next major function in dplyr, let's take another subset of our original data. Use select() to grab 3 columns from cran -- ip_id, package, and
| size (in that order) -- and store the result in a new variable called cran3.

> cran3 <- select(ip_id, package, size)
Error in select(ip_id, package, size) : object 'ip_id' not found
> skip()

| Entering the following correct answer for you...

> cran3 <- select(cran, ip_id, package, size)

| You are really on a roll!


  |                                                                            
  |=========================================================             |  82%
| Take a look at cran3 now.

> cran3
# A tibble: 225,468 x 3
   ip_id package         size
   <int> <chr>          <int>
 1     1 htmltools      80589
 2     2 tseries       321767
 3     3 party         748063
 4     3 Hmisc         606104
 5     4 digest         79825
 6     3 randomForest   77681
 7     3 plyr          393754
 8     5 whisker        28216
 9     6 Rcpp            5928
10     7 hflights     2206029
# ... with 225,458 more rows

| You are quite good my friend!


  |                                                                            
  |==========================================================            |  83%
| It's common to create a new variable based on the value of one or more variables already in a dataset. The mutate() function does exactly this.

...


  |                                                                            
  |============================================================          |  85%
| The size variable represents the download size in bytes, which are units of computer memory. These days, megabytes (MB) are a more common unit of measurement. One
| megabyte is equal to 2^20 bytes. That's 2 to the power of 20, which is approximately one million bytes!

...


  |                                                                            
  |=============================================================         |  87%
| We want to add a column called size_mb that contains the download size in megabytes. Here's the code to do it:
| 
| mutate(cran3, size_mb = size / 2^20)

>  mutate(cran3, size_mb = size / 2^20)
# A tibble: 225,468 x 4
   ip_id package         size size_mb
   <int> <chr>          <int>   <dbl>
 1     1 htmltools      80589 0.0769 
 2     2 tseries       321767 0.307  
 3     3 party         748063 0.713  
 4     3 Hmisc         606104 0.578  
 5     4 digest         79825 0.0761 
 6     3 randomForest   77681 0.0741 
 7     3 plyr          393754 0.376  
 8     5 whisker        28216 0.0269 
 9     6 Rcpp            5928 0.00565
10     7 hflights     2206029 2.10   
# ... with 225,458 more rows

| Your dedication is inspiring!


  |                                                                            
  |==============================================================        |  88%
| An even larger unit of memory is a gigabyte (GB), which equals 2^10 megabytes. We might as well add another column for download size in gigabytes!

...


  |                                                                            
  |===============================================================       |  90%
| One very nice feature of mutate() is that you can use the value computed for your second column (size_mb) to create a third column, all in the same line of code.
| To see this in action, repeat the exact same command as above, except add a third argument creating a column that is named size_gb and equal to size_mb / 2^10.

>  mutate(cran3, size_mb = size / 2^20, size_mb = 2^10)
# A tibble: 225,468 x 4
   ip_id package         size size_mb
   <int> <chr>          <int>   <dbl>
 1     1 htmltools      80589    1024
 2     2 tseries       321767    1024
 3     3 party         748063    1024
 4     3 Hmisc         606104    1024
 5     4 digest         79825    1024
 6     3 randomForest   77681    1024
 7     3 plyr          393754    1024
 8     5 whisker        28216    1024
 9     6 Rcpp            5928    1024
10     7 hflights     2206029    1024
# ... with 225,458 more rows

| Give it another try. Or, type info() for more options.

| Use mutate(cran3, size_mb = size / 2^20, size_gb = size_mb / 2^10) to create two new columns called size_mb and size_gb, respectively.

>  mutate(cran3, size_mb = size / 2^20, size_gb = size_mb / 2^10)
# A tibble: 225,468 x 5
   ip_id package         size size_mb    size_gb
   <int> <chr>          <int>   <dbl>      <dbl>
 1     1 htmltools      80589 0.0769  0.0000751 
 2     2 tseries       321767 0.307   0.000300  
 3     3 party         748063 0.713   0.000697  
 4     3 Hmisc         606104 0.578   0.000564  
 5     4 digest         79825 0.0761  0.0000743 
 6     3 randomForest   77681 0.0741  0.0000723 
 7     3 plyr          393754 0.376   0.000367  
 8     5 whisker        28216 0.0269  0.0000263 
 9     6 Rcpp            5928 0.00565 0.00000552
10     7 hflights     2206029 2.10    0.00205   
# ... with 225,458 more rows

| You are doing so well!


  |                                                                            
  |================================================================      |  92%
| Let's try one more for practice. Pretend we discovered a glitch in the system that provided the original values for the size variable. All of the values in cran3
| are 1000 bytes less than they should be. Using cran3, create just one new column called correct_size that contains the correct size.

> skip()

| Entering the following correct answer for you...

> mutate(cran3, correct_size = size + 1000)
# A tibble: 225,468 x 4
   ip_id package         size correct_size
   <int> <chr>          <int>        <dbl>
 1     1 htmltools      80589        81589
 2     2 tseries       321767       322767
 3     3 party         748063       749063
 4     3 Hmisc         606104       607104
 5     4 digest         79825        80825
 6     3 randomForest   77681        78681
 7     3 plyr          393754       394754
 8     5 whisker        28216        29216
 9     6 Rcpp            5928         6928
10     7 hflights     2206029      2207029
# ... with 225,458 more rows

| That's correct!


  |                                                                            
  |=================================================================     |  93%
| The last of the five core dplyr verbs, summarize(), collapses the dataset to a single row. Let's say we're interested in knowing the average download size.
| summarize(cran, avg_bytes = mean(size)) will yield the mean value of the size variable. Here we've chosen to label the result 'avg_bytes', but we could have named
| it anything. Give it a try.

> skip()

| Entering the following correct answer for you...

> summarize(cran, avg_bytes = mean(size))
# A tibble: 1 x 1
  avg_bytes
      <dbl>
1   844086.

| That's correct!


  |                                                                            
  |==================================================================    |  95%
| That's not particularly interesting. summarize() is most useful when working with data that has been grouped by the values of a particular variable.

...


  |                                                                            
  |====================================================================  |  97%
| We'll look at grouped data in the next lesson, but the idea is that summarize() can give you the requested value FOR EACH group in your dataset.

...


  |                                                                            
  |===================================================================== |  98%
| In this lesson, you learned how to manipulate data using dplyr's five main functions. In the next lesson, we'll look at how to take advantage of some other useful
| features of dplyr to make your life as a data analyst much easier.

...

  |===================================================================== |  100%
```
# Resources
- Here is a [link](https://jlinvegas.wordpress.com/2019/02/11/getting-and-cleaning-data-week-3-swirl-1-manipulating-data-with-dplyr/)

# Practice Programming Assignment: swirl Lesson 2: Grouping and Chaining with dplyr
```R
R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> install.packages("swirl")
Installing package into ‘D:/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://ftp.osuosl.org/pub/cran/bin/windows/contrib/3.6/swirl_2.4.5.zip'
Content type 'application/zip' length 350269 bytes (342 KB)
downloaded 342 KB

package ‘swirl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\Chris Norgaard\AppData\Local\Temp\RtmpsN9BKK\downloaded_packages
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> install_course("Getting and Cleaning Data")

  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |                                                                      |   1%
  |                                                                            
  |=                                                                     |   1%
  |                                                                            
  |=                                                                     |   2%
  |                                                                            
  |==                                                                    |   2%
  |                                                                            
  |==                                                                    |   3%
  |                                                                            
  |==                                                                    |   4%
  |                                                                            
  |===                                                                   |   4%
  |                                                                            
  |===                                                                   |   5%
  |                                                                            
  |====                                                                  |   5%
  |                                                                            
  |====                                                                  |   6%
  |                                                                            
  |=====                                                                 |   6%
  |                                                                            
  |=====                                                                 |   7%
  |                                                                            
  |=====                                                                 |   8%
  |                                                                            
  |======                                                                |   8%
  |                                                                            
  |======                                                                |   9%
  |                                                                            
  |=======                                                               |   9%
  |                                                                            
  |=======                                                               |  10%
  |                                                                            
  |=======                                                               |  11%
  |                                                                            
  |========                                                              |  11%
  |                                                                            
  |========                                                              |  12%
  |                                                                            
  |=========                                                             |  12%
  |                                                                            
  |=========                                                             |  13%
  |                                                                            
  |=========                                                             |  14%
  |                                                                            
  |==========                                                            |  14%
  |                                                                            
  |==========                                                            |  15%
  |                                                                            
  |===========                                                           |  15%
  |                                                                            
  |===========                                                           |  16%
  |                                                                            
  |============                                                          |  16%
  |                                                                            
  |============                                                          |  17%
  |                                                                            
  |============                                                          |  18%
  |                                                                            
  |=============                                                         |  18%
  |                                                                            
  |=============                                                         |  19%
  |                                                                            
  |==============                                                        |  19%
  |                                                                            
  |==============                                                        |  20%
  |                                                                            
  |==============                                                        |  21%
  |                                                                            
  |===============                                                       |  21%
  |                                                                            
  |===============                                                       |  22%
  |                                                                            
  |================                                                      |  22%
  |                                                                            
  |================                                                      |  23%
  |                                                                            
  |================                                                      |  24%
  |                                                                            
  |=================                                                     |  24%
  |                                                                            
  |=================                                                     |  25%
  |                                                                            
  |==================                                                    |  25%
  |                                                                            
  |==================                                                    |  26%
  |                                                                            
  |===================                                                   |  26%
  |                                                                            
  |===================                                                   |  27%
  |                                                                            
  |===================                                                   |  28%
  |                                                                            
  |====================                                                  |  28%
  |                                                                            
  |====================                                                  |  29%
  |                                                                            
  |=====================                                                 |  29%
  |                                                                            
  |=====================                                                 |  30%
  |                                                                            
  |=====================                                                 |  31%
  |                                                                            
  |======================                                                |  31%
  |                                                                            
  |======================                                                |  32%
  |                                                                            
  |=======================                                               |  32%
  |                                                                            
  |=======================                                               |  33%
  |                                                                            
  |=======================                                               |  34%
  |                                                                            
  |========================                                              |  34%
  |                                                                            
  |========================                                              |  35%
  |                                                                            
  |=========================                                             |  35%
  |                                                                            
  |=========================                                             |  36%
  |                                                                            
  |==========================                                            |  36%
  |                                                                            
  |==========================                                            |  37%
  |                                                                            
  |==========================                                            |  38%
  |                                                                            
  |===========================                                           |  38%
  |                                                                            
  |===========================                                           |  39%
  |                                                                            
  |============================                                          |  39%
  |                                                                            
  |============================                                          |  40%
  |                                                                            
  |============================                                          |  41%
  |                                                                            
  |=============================                                         |  41%
  |                                                                            
  |=============================                                         |  42%
  |                                                                            
  |==============================                                        |  42%
  |                                                                            
  |==============================                                        |  43%
  |                                                                            
  |==============================                                        |  44%
  |                                                                            
  |===============================                                       |  44%
  |                                                                            
  |===============================                                       |  45%
  |                                                                            
  |================================                                      |  45%
  |                                                                            
  |================================                                      |  46%
  |                                                                            
  |=================================                                     |  46%
  |                                                                            
  |=================================                                     |  47%
  |                                                                            
  |=================================                                     |  48%
  |                                                                            
  |==================================                                    |  48%
  |                                                                            
  |==================================                                    |  49%
  |                                                                            
  |===================================                                   |  49%
  |                                                                            
  |===================================                                   |  50%
  |                                                                            
  |===================================                                   |  51%
  |                                                                            
  |====================================                                  |  51%
  |                                                                            
  |====================================                                  |  52%
  |                                                                            
  |=====================================                                 |  52%
  |                                                                            
  |=====================================                                 |  53%
  |                                                                            
  |=====================================                                 |  54%
  |                                                                            
  |======================================                                |  54%
  |                                                                            
  |======================================                                |  55%
  |                                                                            
  |=======================================                               |  55%
  |                                                                            
  |=======================================                               |  56%
  |                                                                            
  |========================================                              |  56%
  |                                                                            
  |========================================                              |  57%
  |                                                                            
  |========================================                              |  58%
  |                                                                            
  |=========================================                             |  58%
  |                                                                            
  |=========================================                             |  59%
  |                                                                            
  |==========================================                            |  59%
  |                                                                            
  |==========================================                            |  60%
  |                                                                            
  |==========================================                            |  61%
  |                                                                            
  |===========================================                           |  61%
  |                                                                            
  |===========================================                           |  62%
  |                                                                            
  |============================================                          |  62%
  |                                                                            
  |============================================                          |  63%
  |                                                                            
  |=============================================                         |  64%
  |                                                                            
  |=============================================                         |  65%
  |                                                                            
  |==============================================                        |  65%
  |                                                                            
  |==============================================                        |  66%
  |                                                                            
  |===============================================                       |  66%
  |                                                                            
  |===============================================                       |  67%
  |                                                                            
  |===============================================                       |  68%
  |                                                                            
  |================================================                      |  68%
  |                                                                            
  |================================================                      |  69%
  |                                                                            
  |=================================================                     |  69%
  |                                                                            
  |=================================================                     |  70%
  |                                                                            
  |=================================================                     |  71%
  |                                                                            
  |==================================================                    |  71%
  |                                                                            
  |==================================================                    |  72%
  |                                                                            
  |===================================================                   |  72%
  |                                                                            
  |===================================================                   |  73%
  |                                                                            
  |===================================================                   |  74%
  |                                                                            
  |====================================================                  |  74%
  |                                                                            
  |====================================================                  |  75%
  |                                                                            
  |=====================================================                 |  75%
  |                                                                            
  |=====================================================                 |  76%
  |                                                                            
  |======================================================                |  76%
  |                                                                            
  |======================================================                |  77%
  |                                                                            
  |======================================================                |  78%
  |                                                                            
  |=======================================================               |  78%
  |                                                                            
  |=======================================================               |  79%
  |                                                                            
  |========================================================              |  79%
  |                                                                            
  |========================================================              |  80%
  |                                                                            
  |========================================================              |  81%
  |                                                                            
  |=========================================================             |  81%
  |                                                                            
  |=========================================================             |  82%
  |                                                                            
  |==========================================================            |  82%
  |                                                                            
  |==========================================================            |  83%
  |                                                                            
  |==========================================================            |  84%
  |                                                                            
  |===========================================================           |  84%
  |                                                                            
  |===========================================================           |  85%
  |                                                                            
  |============================================================          |  85%
  |                                                                            
  |============================================================          |  86%
  |                                                                            
  |=============================================================         |  86%
  |                                                                            
  |=============================================================         |  87%
  |                                                                            
  |=============================================================         |  88%
  |                                                                            
  |==============================================================        |  88%
  |                                                                            
  |==============================================================        |  89%
  |                                                                            
  |===============================================================       |  89%
  |                                                                            
  |===============================================================       |  90%
  |                                                                            
  |===============================================================       |  91%
  |                                                                            
  |================================================================      |  91%
  |                                                                            
  |================================================================      |  92%
  |                                                                            
  |=================================================================     |  92%
  |                                                                            
  |=================================================================     |  93%
  |                                                                            
  |=================================================================     |  94%
  |                                                                            
  |==================================================================    |  94%
  |                                                                            
  |==================================================================    |  95%
  |                                                                            
  |===================================================================   |  95%
  |                                                                            
  |===================================================================   |  96%
  |                                                                            
  |====================================================================  |  96%
  |                                                                            
  |====================================================================  |  97%
  |                                                                            
  |====================================================================  |  98%
  |                                                                            
  |===================================================================== |  98%
  |                                                                            
  |===================================================================== |  99%
  |                                                                            
  |======================================================================|  99%
  |                                                                            
  |======================================================================| 100%

| Course installed successfully!

> swirl()
| Package ‘dplyr’ loaded correctly!


  |                                                                            
  |                                                                      |   0%

| Warning: This lesson makes use of the View() function. View() may not work
| properly in every programming environment. We highly recommend the use of
| RStudio for this lesson.

...


  |                                                                            
  |=                                                                     |   2%
| In the last lesson, you learned about the five main data manipulation 'verbs'
| in dplyr: select(), filter(), arrange(), mutate(), and summarize(). The last
| of these, summarize(), is most powerful when applied to grouped data.

...


  |                                                                            
  |===                                                                   |   4%
| The main idea behind grouping data is that you want to break up your dataset
| into groups of rows based on the values of one or more variables. The
| group_by() function is reponsible for doing this.

...

...


  |                                                                            
  |===                                                                   |   4%
| The main idea behind grouping data is that you want to break up your dataset
| into groups of rows based on the values of one or more variables. The
| group_by() function is reponsible for doing this.

...


  |                                                                            
  |====                                                                  |   6%
| We'll continue where we left off with RStudio's CRAN download log from July
| 8, 2014, which contains information on roughly 225,000 R package downloads
| (http://cran-logs.rstudio.com/).

...


  |                                                                            
  |=====                                                                 |   8%
| As with the last lesson, the dplyr package was automatically installed (if
| necessary) and loaded at the beginning of this lesson. Normally, this is
| something you would have to do on your own. Just to build the habit, type
| library(dplyr) now to load the package again.

> library(dplyr)

| You are really on a roll!


  |                                                                            
  |=======                                                               |  10%
| I've made the dataset available to you in a data frame called mydf. Put it
| in a 'data frame tbl' using the tbl_df() function and store the result in a
| object called cran. If you're not sure what I'm talking about, you should
| start with the previous lesson. Otherwise, practice makes perfect!

> cran <- tbl_df(mydf)

| Great job!


  |                                                                            
  |========                                                              |  12%
| To avoid confusion and keep things running smoothly, let's remove the
| original dataframe from your workspace with rm("mydf").

> rm("mydf")

| You got it right!


  |                                                                            
  |=========                                                             |  13%
| Print cran to the console.

> cran
# A tibble: 225,468 x 11
       X date  time    size r_version r_arch r_os  package version country
   <int> <chr> <chr>  <int> <chr>     <chr>  <chr> <chr>   <chr>   <chr>  
 1     1 2014~ 00:5~ 8.06e4 3.1.0     x86_64 ming~ htmlto~ 0.2.4   US     
 2     2 2014~ 00:5~ 3.22e5 3.1.0     x86_64 ming~ tseries 0.10-32 US     
 3     3 2014~ 00:4~ 7.48e5 3.1.0     x86_64 linu~ party   1.0-15  US     
 4     4 2014~ 00:4~ 6.06e5 3.1.0     x86_64 linu~ Hmisc   3.14-4  US     
 5     5 2014~ 00:4~ 7.98e4 3.0.2     x86_64 linu~ digest  0.6.4   CA     
 6     6 2014~ 00:4~ 7.77e4 3.1.0     x86_64 linu~ random~ 4.6-7   US     
 7     7 2014~ 00:4~ 3.94e5 3.1.0     x86_64 linu~ plyr    1.8.1   US     
 8     8 2014~ 00:4~ 2.82e4 3.0.2     x86_64 linu~ whisker 0.3-2   US     
 9     9 2014~ 00:5~ 5.93e3 <NA>      <NA>   <NA>  Rcpp    0.10.4  CN     
10    10 2014~ 00:1~ 2.21e6 3.0.2     x86_64 linu~ hfligh~ 0.1     US     
# ... with 225,458 more rows, and 1 more variable: ip_id <int>

| Keep working like that and you'll get there!


  |                                                                            
  |===========                                                           |  15%
| Our first goal is to group the data by package name. Bring up the help file
| for group_by().

> ?group_by()
starting httpd help server ... done

| Not exactly. Give it another go. Or, type info() for more options.

| Use ?group_by to bring up the documentation.

> ?group_by

| Keep up the great work!


  |                                                                            
  |============                                                          |  17%
| Group cran by the package variable and store the result in a new object
| called by_package.

> skip()

| Entering the following correct answer for you...

> by_package <- group_by(cran, package)

| You nailed it! Good job!


  |                                                                            
  |=============                                                         |  19%
| Let's take a look at by_package. Print it to the console.

> print("by_package")
[1] "by_package"

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type by_package to view its contents.

> by_package
# A tibble: 225,468 x 11
# Groups:   package [6,023]
       X date  time    size r_version r_arch r_os  package version country
   <int> <chr> <chr>  <int> <chr>     <chr>  <chr> <chr>   <chr>   <chr>  
 1     1 2014~ 00:5~ 8.06e4 3.1.0     x86_64 ming~ htmlto~ 0.2.4   US     
 2     2 2014~ 00:5~ 3.22e5 3.1.0     x86_64 ming~ tseries 0.10-32 US     
 3     3 2014~ 00:4~ 7.48e5 3.1.0     x86_64 linu~ party   1.0-15  US     
 4     4 2014~ 00:4~ 6.06e5 3.1.0     x86_64 linu~ Hmisc   3.14-4  US     
 5     5 2014~ 00:4~ 7.98e4 3.0.2     x86_64 linu~ digest  0.6.4   CA     
 6     6 2014~ 00:4~ 7.77e4 3.1.0     x86_64 linu~ random~ 4.6-7   US     
 7     7 2014~ 00:4~ 3.94e5 3.1.0     x86_64 linu~ plyr    1.8.1   US     
 8     8 2014~ 00:4~ 2.82e4 3.0.2     x86_64 linu~ whisker 0.3-2   US     
 9     9 2014~ 00:5~ 5.93e3 <NA>      <NA>   <NA>  Rcpp    0.10.4  CN     
10    10 2014~ 00:1~ 2.21e6 3.0.2     x86_64 linu~ hfligh~ 0.1     US     
# ... with 225,458 more rows, and 1 more variable: ip_id <int>

| That's a job well done!


  |                                                                            
  |===============                                                       |  21%
| At the top of the output above, you'll see 'Groups: package', which tells us
| that this tbl has been grouped by the package variable. Everything else
| looks the same, but now any operation we apply to the grouped data will take
| place on a per package basis.

...


  |                                                                            
  |================                                                      |  23%
| Recall that when we applied mean(size) to the original tbl_df via
| summarize(), it returned a single number -- the mean of all values in the
| size column. We may care about what that number is, but wouldn't it be so
| much more interesting to look at the mean download size for each unique
| package?

...


  |                                                                            
  |==================                                                    |  25%
| That's exactly what you'll get if you use summarize() to apply mean(size) to
| the grouped data in by_package. Give it a shot.

> skip()

| Entering the following correct answer for you...

> summarize(by_package, mean(size))
# A tibble: 6,023 x 2
   package     `mean(size)`
   <chr>              <dbl>
 1 A3                62195.
 2 abc             4826665 
 3 abcdeFBA         455980.
 4 ABCExtremes       22904.
 5 ABCoptim          17807.
 6 ABCp2             30473.
 7 abctools        2589394 
 8 abd              453631.
 9 abf2              35693.
10 abind             32939.
# ... with 6,013 more rows

| That's a job well done!


  |                                                                            
  |===================                                                   |  27%
| Instead of returning a single value, summarize() now returns the mean size
| for EACH package in our dataset.

...


  |                                                                            
  |====================                                                  |  29%
| Let's take it a step further. I just opened an R script for you that
| contains a partially constructed call to summarize(). Follow the
| instructions in the script comments.
| 
| When you are ready to move on, save the script and type submit(), or type
| reset() to reset the script to its original state.

> submit()

| Sourcing your script...

Error : object '' not found

| Nice try, but that's not exactly what I was hoping for. Try again.

| Follow the directions in the script comments very carefully. If R gave you
| an error above, try to understand what it is telling you. If you get stuck,
| type reset() to start with a fresh script, then save the script and type
| submit() when you are ready.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  C:\Users\CHRISN~1\AppData\Local\Temp\RtmpsN9BKK/summarize1.R:20:31: unexpected ','
19: pack_sum <- summarize(by_package, count = , unique = , countries = , avg_bytes = )
20:                       count = ,
                                  ^

| You're close...I can feel it! Try it again.

| Follow the directions in the script comments very carefully. If R gave you
| an error above, try to understand what it is telling you. If you get stuck,
| type reset() to start with a fresh script, then save the script and type
| submit() when you are ready.

> submit()

| Sourcing your script...

Error : object '' not found

| Almost! Try again.

| Follow the directions in the script comments very carefully. If R gave you
| an error above, try to understand what it is telling you. If you get stuck,
| type reset() to start with a fresh script, then save the script and type
| submit() when you are ready.

> reset()
Error in UseMethod("do_rst") : 
  no applicable method for 'do_rst' applied to an object of class "c('environment', 'default')"

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same
| name as you did then. If you are new, call yourself something unique.

What shall I call you? Chris

| Would you like to continue with one of these lessons?

1: Getting and Cleaning Data Grouping and Chaining with dplyr
2: No. Let me start something new.

Selection: 1

| Attempting to load lesson dependencies...

| Package ‘dplyr’ loaded correctly!



| Let's take it a step further. I just opened an R script for you that
| contains a partially constructed call to summarize(). Follow the
| instructions in the script comments.
| 
| When you are ready to move on, save the script and type submit(), or type
| reset() to reset the script to its original state.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  C:\Users\CHRISN~1\AppData\Local\Temp\RtmpsN9BKK/summarize1.R:20:31: unexpected ','
19: pack_sum <- summarize(by_package,count = n(), unique = n_distinct(ip_id), countries = n_distinct(country), avg_bytes = mean(size)) 
20:                       count = ,
                                  ^

| Not quite! Try again.

| Follow the directions in the script comments very carefully. If R gave you
| an error above, try to understand what it is telling you. If you get stuck,
| type reset() to start with a fresh script, then save the script and type
| submit() when you are ready.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  C:\Users\CHRISN~1\AppData\Local\Temp\RtmpsN9BKK/summarize1.R:20:31: unexpected ','
19: pack_sum <- summarize(by_package, count = n(), unique = n_distinct(ip_id), countries = n_distinct(country), avg_bytes = mean(size)) 
20:                       count = ,
                                  ^

| Nice try, but that's not exactly what I was hoping for. Try again.

| Follow the directions in the script comments very carefully. If R gave you
| an error above, try to understand what it is telling you. If you get stuck,
| type reset() to start with a fresh script, then save the script and type
| submit() when you are ready.

> reset()
Error in UseMethod("do_rst") : 
  no applicable method for 'do_rst' applied to an object of class "c('environment', 'default')"

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same
| name as you did then. If you are new, call yourself something unique.

What shall I call you? Chris

| Would you like to continue with one of these lessons?

1: Getting and Cleaning Data Grouping and Chaining with dplyr
2: No. Let me start something new.

Selection: 1

| Attempting to load lesson dependencies...

| Package ‘dplyr’ loaded correctly!



| Let's take it a step further. I just opened an R script for you that
| contains a partially constructed call to summarize(). Follow the
| instructions in the script comments.
| 
| When you are ready to move on, save the script and type submit(), or type
| reset() to reset the script to its original state.

> submit()

| Sourcing your script...

pack_sum <- summarize(by_package, count = n(), unique = n_distinct(ip_id), countries = n_distinct(country), avg_bytes = mean(size))

| That's the answer I was looking for.

  |                                                                            
  |======================                                                |  31%
| Print the resulting tbl, pack_sum, to the console to examine its contents.

> pack_sum
# A tibble: 6,023 x 5
   package     count unique countries avg_bytes
   <chr>       <int>  <int>     <int>     <dbl>
 1 A3             25     24        10    62195.
 2 abc            29     25        16  4826665 
 3 abcdeFBA       15     15         9   455980.
 4 ABCExtremes    18     17         9    22904.
 5 ABCoptim       16     15         9    17807.
 6 ABCp2          18     17        10    30473.
 7 abctools       19     19        11  2589394 
 8 abd            17     16        10   453631.
 9 abf2           13     13         9    35693.
10 abind         396    365        50    32939.
# ... with 6,013 more rows

| All that hard work is paying off!


  |                                                                            
  |=======================                                               |  33%
| The 'count' column, created with n(), contains the total number of rows
| (i.e. downloads) for each package. The 'unique' column, created with
| n_distinct(ip_id), gives the total number of unique downloads for each
| package, as measured by the number of distinct ip_id's. The 'countries'
| column, created with n_distinct(country), provides the number of countries
| in which each package was downloaded. And finally, the 'avg_bytes' column,
| created with mean(size), contains the mean download size (in bytes) for each
| package.

...


  |                                                                            
  |========================                                              |  35%
| It's important that you understand how each column of pack_sum was created
| and what it means. Now that we've summarized the data by individual
| packages, let's play around with it some more to see what we can learn.

...


  |                                                                            
  |==========================                                            |  37%
| Naturally, we'd like to know which packages were most popular on the day
| these data were collected (July 8, 2014). Let's start by isolating the top
| 1% of packages, based on the total number of downloads as measured by the
| 'count' column.

...


  |                                                                            
  |===========================                                           |  38%
| We need to know the value of 'count' that splits the data into the top 1%
| and bottom 99% of packages based on total downloads. In statistics, this is
| called the 0.99, or 99%, sample quantile. Use quantile(pack_sum$count, probs
| = 0.99) to determine this number.

> quantile(pack_sum$count, probs = 0.99)
   99% 
679.56 

| Perseverance, that's the answer.


  |                                                                            
  |============================                                          |  40%
| Now we can isolate only those packages which had more than 679 total
| downloads. Use filter() to select all rows from pack_sum for which 'count'
| is strictly greater (>) than 679. Store the result in a new object called
| top_counts.

> skip()

| Entering the following correct answer for you...

> top_counts <- filter(pack_sum, count > 679)

| You are doing so well!


  |                                                                            
  |==============================                                        |  42%
| Let's take a look at top_counts. Print it to the console.

> top_counts
# A tibble: 61 x 5
   package    count unique countries avg_bytes
   <chr>      <int>  <int>     <int>     <dbl>
 1 bitops      1549   1408        76    28715.
 2 car         1008    837        64  1229122.
 3 caTools      812    699        64   176589.
 4 colorspace  1683   1433        80   357411.
 5 data.table   680    564        59  1252721.
 6 DBI         2599    492        48   206933.
 7 devtools     769    560        55   212933.
 8 dichromat   1486   1257        74   134732.
 9 digest      2210   1894        83   120549.
10 doSNOW       740     75        24     8364.
# ... with 51 more rows

| You nailed it! Good job!


  |                                                                            
  |===============================                                       |  44%
| There are only 61 packages in our top 1%, so we'd like to see all of them.
| Since dplyr only shows us the first 10 rows, we can use the View() function
| to see more.

...


  |                                                                            
  |================================                                      |  46%
| View all 61 rows with View(top_counts). Note that the 'V' in View() is
| capitalized.

> View(top_counts)

| Nice work!


  |                                                                            
  |==================================                                    |  48%
| arrange() the rows of top_counts based on the 'count' column and assign the
| result to a new object called top_counts_sorted. We want the packages with
| the highest number of downloads at the top, which means we want 'count' to
| be in descending order. If you need help, check out ?arrange and/or ?desc.

> skip()

| Entering the following correct answer for you...

> top_counts_sorted <- arrange(top_counts, desc(count))

| Great job!


  |                                                                            
  |===================================                                   |  50%
| Now use View() again to see all 61 rows of top_counts_sorted.

> View(top_counts_sorted)

| That's the answer I was looking for.


  |                                                                            
  |====================================                                  |  52%
| If we use total number of downloads as our metric for popularity, then the
| above output shows us the most popular packages downloaded from the RStudio
| CRAN mirror on July 8, 2014. Not surprisingly, ggplot2 leads the pack with
| 4602 downloads, followed by Rcpp, plyr, rJava, ....

...


  |                                                                            
  |======================================                                |  54%
| ...And if you keep on going, you'll see swirl at number 43, with 820 total
| downloads. Sweet!

...


  |                                                                            
  |=======================================                               |  56%
| Perhaps we're more interested in the number of *unique* downloads on this
| particular day. In other words, if a package is downloaded ten times in one
| day from the same computer, we may wish to count that as only one download.
| That's what the 'unique' column will tell us.

...


  |                                                                            
  |========================================                              |  58%
| Like we did with 'count', let's find the 0.99, or 99%, quantile for the
| 'unique' variable with quantile(pack_sum$unique, probs = 0.99).

> quantile(pack_sum$unique, probs = 0.99)
99% 
465 

| You're the best!


  |                                                                            
  |==========================================                            |  60%
| Apply filter() to pack_sum to select all rows corresponding to values of
| 'unique' that are strictly greater than 465. Assign the result to a object
| called top_unique.

> top_unique <- filter(pack_sum,unique > 465)

| Perseverance, that's the answer.


  |                                                                            
  |===========================================                           |  62%
| Let's View() our top contenders!

> skip()

| Entering the following correct answer for you...

> View(top_unique)

| All that hard work is paying off!


  |                                                                            
  |============================================                          |  63%
| Now arrange() top_unique by the 'unique' column, in descending order, to
| see which packages were downloaded from the greatest number of unique IP
| addresses. Assign the result to top_unique_sorted.

> top_counts_sorted <- arrange(top_counts, desc(unique))

| That's not exactly what I'm looking for. Try again. Or, type info() for
| more options.

| arrange(top_unique, desc(unique)) will arrange the rows of top_unique
| based on the values of the 'unique' variable, in descending order. Assign
| the result to top_unique_sorted.

> skip()

| Entering the following correct answer for you...

> top_unique_sorted <- arrange(top_unique, desc(unique))

| You nailed it! Good job!


  |                                                                            
  |==============================================                        |  65%
| View() the sorted data.

> View(top_counts_sorted)

| Not exactly. Give it another go. Or, type info() for more options.

| View(top_unique_sorted) will display the sorted data.

> View(top_unique_sorted)

| You nailed it! Good job!


  |                                                                            
  |===============================================                       |  67%
| Now Rcpp is in the lead, followed by stringr, digest, plyr, and ggplot2.
| swirl moved up a few spaces to number 40, with 698 unique downloads. Nice!

...


  |                                                                            
  |================================================                      |  69%
| Our final metric of popularity is the number of distinct countries from which
| each package was downloaded. We'll approach this one a little differently to
| introduce you to a method called 'chaining' (or 'piping').

...


  |                                                                            
  |==================================================                    |  71%
| Chaining allows you to string together multiple function calls in a way that is
| compact and readable, while still accomplishing the desired result. To make it
| more concrete, let's compute our last popularity metric from scratch, starting
| with our original data.

...


  |                                                                            
  |===================================================                   |  73%
| I've opened up a script that contains code similar to what you've seen so far.
| Don't change anything. Just study it for a minute, make sure you understand
| everything that's there, then submit() when you are ready to move on.

> submit()

| Sourcing your script...

# A tibble: 46 x 5
   package      count unique countries avg_bytes
   <chr>        <int>  <int>     <int>     <dbl>
 1 Rcpp          3195   2044        84  2512100.
 2 digest        2210   1894        83   120549.
 3 stringr       2267   1948        82    65277.
 4 plyr          2908   1754        81   799123.
 5 ggplot2       4602   1680        81  2427716.
 6 colorspace    1683   1433        80   357411.
 7 RColorBrewer  1890   1584        79    22764.
 8 scales        1726   1408        77   126819.
 9 bitops        1549   1408        76    28715.
10 reshape2      2032   1652        76   330128.
# ... with 36 more rows

| You are amazing!


  |                                                                            
  |====================================================                  |  75%
| It's worth noting that we sorted primarily by country, but used avg_bytes (in
| ascending order) as a tie breaker. This means that if two packages were
| downloaded from the same number of countries, the package with a smaller average
| download size received a higher ranking.

...


  |                                                                            
  |======================================================                |  77%
| We'd like to accomplish the same result as the last script, but avoid saving our
| intermediate results. This requires embedding function calls within one another.

...


  |                                                                            
  |=======================================================               |  79%
| That's exactly what we've done in this script. The result is equivalent, but the
| code is much less readable and some of the arguments are far away from the
| function to which they belong. Again, just try to understand what is going on
| here, then submit() when you are ready to see a better solution.

> submit()

| Sourcing your script...

# A tibble: 46 x 5
   package      count unique countries avg_bytes
   <chr>        <int>  <int>     <int>     <dbl>
 1 Rcpp          3195   2044        84  2512100.
 2 digest        2210   1894        83   120549.
 3 stringr       2267   1948        82    65277.
 4 plyr          2908   1754        81   799123.
 5 ggplot2       4602   1680        81  2427716.
 6 colorspace    1683   1433        80   357411.
 7 RColorBrewer  1890   1584        79    22764.
 8 scales        1726   1408        77   126819.
 9 bitops        1549   1408        76    28715.
10 reshape2      2032   1652        76   330128.
# ... with 36 more rows

| Keep working like that and you'll get there!


  |                                                                            
  |=========================================================             |  81%
| In this script, we've used a special chaining operator, %>%, which was originally
| introduced in the magrittr R package and has now become a key component of dplyr.
| You can pull up the related documentation with ?chain. The benefit of %>% is that
| it allows us to chain the function calls in a linear fashion. The code to the
| right of %>% operates on the result from the code to the left of %>%.
| 
| Once again, just try to understand the code, then type submit() to continue.

> submit()

| Sourcing your script...

# A tibble: 46 x 5
   package      count unique countries avg_bytes
   <chr>        <int>  <int>     <int>     <dbl>
 1 Rcpp          3195   2044        84  2512100.
 2 digest        2210   1894        83   120549.
 3 stringr       2267   1948        82    65277.
 4 plyr          2908   1754        81   799123.
 5 ggplot2       4602   1680        81  2427716.
 6 colorspace    1683   1433        80   357411.
 7 RColorBrewer  1890   1584        79    22764.
 8 scales        1726   1408        77   126819.
 9 bitops        1549   1408        76    28715.
10 reshape2      2032   1652        76   330128.
# ... with 36 more rows

| That's correct!


  |                                                                            
  |==========================================================            |  83%
| So, the results of the last three scripts are all identical. But, the third
| script provides a convenient and concise alternative to the more traditional
| method that we've taken previously, which involves saving results as we go along.

...


  |                                                                            
  |===========================================================           |  85%
| Once again, let's View() the full data, which has been stored in result3.

> View()
Error in as.data.frame(x) : argument "x" is missing, with no default
> View(result3)

| You are amazing!


  |                                                                            
  |=============================================================         |  87%
| It looks like Rcpp is on top with downloads from 84 different countries, followed
| by digest, stringr, plyr, and ggplot2. swirl jumped up the rankings again, this
| time to 27th.

...


  |                                                                            
  |==============================================================        |  88%
| To help drive the point home, let's work through a few more examples of chaining.

...


  |                                                                            
  |===============================================================       |  90%
| Let's build a chain of dplyr commands one step at a time, starting with the
| script I just opened for you.

> skip()
# A tibble: 225,468 x 4
   ip_id country package         size
   <int> <chr>   <chr>          <int>
 1     1 US      htmltools      80589
 2     2 US      tseries       321767
 3     3 US      party         748063
 4     3 US      Hmisc         606104
 5     4 CA      digest         79825
 6     3 US      randomForest   77681
 7     3 US      plyr          393754
 8     5 US      whisker        28216
 9     6 CN      Rcpp            5928
10     7 US      hflights     2206029
# ... with 225,458 more rows

| I just sourced the following script, which demonstrates one possible solution.

Press Enter when you are ready to continue...

| That's a job well done!


  |                                                                            
  |=================================================================     |  92%
| Let's add to the chain.

> skip()

| I just sourced the following script, which demonstrates one possible solution.

Press Enter when you are ready to continue...

| You are amazing!


  |                                                                            
  |==================================================================    |  94%
| A little bit more now.

> skip()

| I just sourced the following script, which demonstrates one possible solution.

Press Enter when you are ready to continue...

| You are amazing!


  |                                                                            
  |===================================================================   |  96%
| And finish it off.

> skip()

| I just sourced the following script, which demonstrates one possible solution.

Press Enter when you are ready to continue...

| You're the best!


  |                                                                            
  |===================================================================== |  98%
| In this lesson, you learned about grouping and chaining using dplyr. You combined
| some of the things you learned in the previous lesson with these more advanced
| ideas to produce concise, readable, and highly effective code. Welcome to the
| wonderful world of dplyr!
```

# Practice Programming Assignment: swirl Lesson 3: Tidying Data with tidyr
```R
