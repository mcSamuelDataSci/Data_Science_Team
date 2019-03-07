
https://www.mobilizingcs.org/


https://opensource.com/article/17/6/collecting-and-mapping-twitter-data-using-r





https://www.phusewiki.org/wiki/index.php?title=Open_XPT_File_with_R



https://wwwn.cdc.gov/nchs/nhanes/Default.aspx


https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Examination&CycleBeginYear=2015
https://wwwn.cdc.gov/nchs/nhanes/sasviewer.aspx

Download and install the windows binary from the R Project site
Launch R and from the Packages menu select install to download and install these two packages
Hmisc
SASxport
Set the current directory to the directory containing the *.xpt file: (File -> Change dir …)
Issue these commands (sample uses bw.xpt; sub in whatever your file is named):
  library(SASxport)
data(Alfalfa)
lookup.xport("bw.xpt")
Alfalfa <- read.xport("bw.xpt")
head (Alfalfa)
