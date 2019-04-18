# Filename?
# Author?
# Date?

library(dplyr)
library(shiny)

#----Text Etc.

#  BMI = weight / height^2
#  BMI = kilograms / meters^2  
#  BMI = ( pounds / inches^2 ) * 703

#-----Data and Constants

caData <- read.csv("Sample_FG_Samuals_03272019.csv")

#-----Functions

myGender <- "M"
myBreaks <- 20

myHist <- function(myGender="T",myBreaks=20) {
  if(myGender != "T") {caData <- filter(caData,Gender==myGender)}
  hist(caData$WeightLbs,breaks=myBreaks)
}


# Define the UI
ui <- bootstrapPage(
  selectInput('myGender', 'Select Gender', c("M","F")),
  numericInput('myBreaks',"How many breaks",10),
  plotOutput('plot')
)

# Define the server code
server <- function(input, output) {
  output$plot <- renderPlot(myHist(input$myGender,input$myBreaks))
  }

# Return a Shiny app object
shinyApp(ui = ui, server = server)
