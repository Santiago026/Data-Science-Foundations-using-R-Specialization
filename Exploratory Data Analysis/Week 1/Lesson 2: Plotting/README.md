# Base Plot
  - "artists palette" model
  - Start with the plot Function
	- Use annotation functions to add/modify (text, lines, points, axis)
	- Cant go back and adjust; need to plan in advance


![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/Base%20Plot.JPG?raw=true)

# Lattice System
	- Entire plot specified
	- Plot created with a single fucntion call (xyplot, bwplot, etc)
	- Margins/Spacing set automatically
	- Good for plotting many plots

![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/Lattice%20Plot.JPG?raw=true)

# The ggplot2 System
	- Mixed elemtents of Base and Lattice

![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/ggplot2.JPGraw=true)

# Core plotting system packages
- graphics
- grDevices
- lattice
- grid

-Parameters documented at
[?par](https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/par)

-Two Phases to creating a base plot
	- Initializing a new plot
	- Annotating (adding to) an existing plot

![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/Base%20Simple%20Base%20Graphics%20Boxplot.JPG?raw=true)

![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/Base%20Simple%20Base%20Graphics%20Scatterplot.JPG?raw=true)

![image info](https://github.com/WelfareCheck/Data-Science-Foundations-using-R-Specialization/blob/master/Exploratory%20Data%20Analysis/Week%201/Lesson%202:%20Plotting/Base%20Simple%20Base%20Graphics%20Histogram.JPG?raw=true)

# Some Important Base Graphics Parameters
- ``` pch ``` the plotting symbol 
- ``` lty ``` the line type
- ``` lwd ``` the line width
- ``` col ``` plotting color
- ``` xlab ``` character string for the x-axis label
- ``` ylab ``` character string for the y-axi  label

# Base Graphics Parameters
``` par() ``` function is used to spcify global graphic paramters that affect all plots in an R session
- ``` par("las") ``` the proientation of the axis labels on the plot
- ``` par("bg") ``` the background color
- ``` par("mar") ``` the margin size
- ``` par("oma") ```the outer margin size (default is 0 for all sides)
- ``` par("mfrow") ``` number of plots per row, column (plots are filled row-wise)
- ``` par("mfcol") ``` number of plots per row, column (plots are filled column-wise)
