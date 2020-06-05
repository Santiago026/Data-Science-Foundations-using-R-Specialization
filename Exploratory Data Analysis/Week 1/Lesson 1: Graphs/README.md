# Exploratory Graphs (part 1)

- ``` boxplot() ```
  - Produce box-and-whisker plot(s) of the given (grouped) values

### Usage
![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%201:%20Graphs/Boxplot.JPG?raw=true)

- ``` hist() ```
  - The generic function hist computes a histogram of the given data values. If plot = TRUE, the resulting object of class "histogram" is plotted by plot.histogram, before it is returned
  
  ### Usage
![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%201:%20Graphs/Histogram.JPG?raw=true)


``` rug() ```

``` summary() ```
  - 

``` abline() ```
  - This function adds one or more straight lines through the current plot
  - Add Straight Lines To A Plot
Usage
  - ``` abline(a = NULL, b = NULL, h = NULL, v = NULL, reg = NULL, coef = NULL, untf = FALSE, ...) ```
Arguments
  - a, b
    - the intercept and slope, single values.
  - untf
    - logical asking whether to untransform. See ‘Details’.
  - h
    - the y-value(s) for horizontal line(s).
  - v
    - the x-value(s) for vertical line(s).
  - coef
    - a vector of length two giving the intercept and slope.
  - reg
    - an object with a coef method. See ‘Details’.
  - …
    - graphical parameters such as col, lty and lwd (possibly as vectors: see ‘Details’) and xpd and the line characteristics lend, ljoin and lmitre.
    
  - Markdown basic writing and formating [here](https://help.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax)
