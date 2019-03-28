# GGPLOT2
# READING DATA
# MARKDONW FILES
# SHINY INTERACTIVITY

# more R CLOUD







# Filename?
# Author?
# Date?

#----Text Etc.

#  "Body Mass Index" or "BMI"  concepts:

# Body mass index (BMI) is defined as an individual's body mass divided by the square of his or her height, 
# measured in kilograms/meters squared. A normal BMI ranges from 18.5 to 24.9. Overweight is defined as having 
# a BMI of 25 to 29.9. A BMI equal or greater than 30 is considered obese.

#  BMI = weight / height^2
#  BMI = kilograms / meters^2  
#  BMI = ( pounds / inches^2 ) * 703
#  "healthy BMI" = 18.5 - 24.9
#  "ideal.bmi" (not true) (18.5+24.9)/2 =21.7


#-----Constants

height.mean <- 66
height.sd   <-  3

weight.mean <- 130
weight.sd   <-  20


ideal.bmi <- 21.7
ideal.bmi.sd <- 1.8


N <- 10000

#-----Functions


simHW.1 <- function(N){
  height <- rnorm(N,mean=height.mean,sd=height.sd)
  weight <- rnorm(N,mean=weight.mean,sd=weight.sd)
  as.data.frame(cbind(height,weight))
}


simHW.2 <- function(N){
  height <- rnorm(N,mean=height.mean,sd=height.sd)
  weight <- rnorm(N,ideal.bmi,ideal.bmi.sd) *  height^2  / 703 
  as.data.frame(cbind(height,weight))
}



height_weight_plot <- function(myCol="blue"){
  plot(sim.height,sim.weight,
       xlab="Height",
       ylab="Weight",
       col=myCol)
}


#-----Analysis and Display


simData <- simHW.1(500)

sim.height <- simData$height
sim.weight <- simData$weight

height_weight_plot()


simData <- simHW.2(500)

sim.height <- simData$height
sim.weight <- simData$weight

height_weight_plot()




# BMI.scriptYours
# -"clean up" this code
# suggest better documentation?
# suggest better naming conventions?
# build new function which includes:
#  hieght as an input parameter (since this varies by population group)
#  ideal BMI as an input paramter
#  other cool stuff?





test <- read.csv("Sample_FG_Samuals_03272019.csv")
hist(test$HeightInches,breaks=50)


