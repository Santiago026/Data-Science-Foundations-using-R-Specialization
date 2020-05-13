# There is a package for that
- Roger has a nice video on how there are R packages for most things that you will want to access
- Here I'm going to briefly review a few useful packages
- In general the best way to find out if the R package exists is to Google “data storage mechanims R package”, e.g., “MySQL R package”

# Interacting more directly with files
- file: open a connection to a text file
- url: open a connection to a url
- gzfile: open a connection to a .gz file
- bzfile: open a connection to a .bz2 file
- read.fwf hint-hint-wink-wink: Reads from a fixed-width file
- ?connections for more information
- Remember to close connections

# Foreign package
- Loads data from Minitab, S, SAS, SPSS, Stata, Systat
- Basic functions:
  - read.arff (Weka)
  - read.dta (Stata)
  - read.mtp (Minitab)
  - read.octave (Octave)
  - read.spss (SPSS)
  - read.xport (SAS)
- See the help page for more details: http://cran.r-project.org/web/packages/foreign/foreign.pdf

# Examples of other database packages
- RPostgreSQL provides DBI-compliant db connection from R
  - Tutorial: https://code.google.com/p/rpostgresql/
  - Help: http://cran.r-project.org/web/packages/RPostgreSQL/RPostgresSQL.pdf
- RODBC provides interfaces to multiple databases including PostgresQL, MYSQL, MS-Access and SQLite
  - Tutorial: http://cran.r-project.org/web/packages/RODBC/vignettes/RODB C.pdf
  - Help: http://cran.r-project.org/web/packages/RODBC/RODBC.pdf
-RMongo: http://cran.r-project.org/web/packages/RMong/RMongo.pdf
  - Also: http://www.r-bloggers.com/r-and-mongodb

# Reading images
-peg: http://cran.r-project.org/web/packages/jpeg/index.html
- readbitmap: http://cran.r-project.org/web/packages/readbitmap/index.html
- png: http://cran.r-project.org/web/packages/png/index.html
- EBImage (Bioconductor): http://www.bioconductor.org/packages/2.13/biox/html/EBImage.html

# Reading GIS data
- rdgal: http://cran.r-project.org/web/packages/rdgal/index.html
- rgeos: http://cran.r-project.org/web/packages/rgeos/index.html
- raster: http://cran.r-project.org/web/packages/raster/index.html

# Reading music (MP3) data
- tuneR: http://cran.r-project.org/web/packages/tuneR/
- seewave: http://rug.mnhn.fr/seewave/

# Resources
-https://rstudio-pubs-static.s3.amazonaws.com/16815_e9607bbe2eb140278f4146a2560d83e7.html
## GIT Resources
-[Working with Advanced Formatting](https://help.github.com/en/github/writing-on-github/working-with-advan
