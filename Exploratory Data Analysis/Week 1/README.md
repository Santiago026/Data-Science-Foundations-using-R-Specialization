# Week 1

This week covers the basics of analytic graphics and the base plotting system in R. We've also included some background material to help you install R if you haven't done so already.

- Background Material
- Lesson 1: Graphs
- Lesson 2: Plotting
- Lesson 3: Graphics Devices
- Practical R Exercises in swirl
- Week 1 Quiz
- Course Project 1

### Reading material
[THE WORK OF EDWARD TUFTE AND GRAPHICS PRESS](https://www.edwardtufte.com/tufte/)

### Graphics Devices in R

- See what graphics devices are available
	- ``` ?devices ```

- plotting systems
	- ``` plot() ```
	- ```xyplot() ```
	- ``` qplot() ````
	- ```with() ```
		example: ``` with(faithful, plot(eruptions, waiting)) ```
	
- annotations
	- ``` title() ```
		example: ``` title(main = "Old Faithful Geyser data") ```

- copy a plot from one device to another
	- ``` dev.copy ```
		example: ``` dev.copy(png, file="geyserplot.png") ```
	- ``` dev.copy2pdf ```

- Change theactive graphics device
	- ``` dev.set(<integer>) ```

- See what the current plotting device is
	- ``` dev.cur() ```

- Send plot to a file device
	- ``` pdf() ```
		- example: ``` pdf(file="myplot.pdf") ```

- Close the device
	- ``` dev.off() ```

- Types of file devices
	- Vector
		 - good for line drawings and plots with solid colors
			PDF
				This is useful for line-type graphics and papers
			svg
				XML-based, scalable vector graphics. This supports | animation and interactivity and is potentially useful for web-based plots
			win.metafile
				a Windows-only metafile format
			 postscript (ps)
				resizes well, is usually | portable, and can be used to create encapsulated postscript files
	Bitmap
		good for plots with a large number of | points, natural scenes or web-based plots
			png
				 good for line drawings or images with solid | colors
			JPEG
				good for photographs or natural scenes
			TIFF
				lossless compression | meta-format 	
			BMP
				a native Windows bitmapped format.
