# Filename?
# Author?
# Date?

#-----Constants

height.mean <- 66
height.sd   <-  3

weight.mean <- 130
weight.sd   <-  20

N <- 10000

#-----Functions

sim.plot <- function(myCol="blue"){
  plot(sim.height,sim.weight,
       xlab="Height",
       ylab="Weight",
       col=myCol)
}

#-----Analysis and Display


sim.height <- rnorm(N,mean=height.mean,sd=height.sd)
sim.weight <- rnorm(N,mean=weight.mean,sd=weight.sd)

sim.plot()














#  BMI concepts:
#  BMI = weight / height^2
#  BMI = kilograms / meters^2  
#  BMI = ( pounds / inches^2 ) * 703

#  weight = BMI * inches^2 / 703 

#  "healthy BMI" = 18.5 - 24.9

ideal.bmi    <- 21.7

sim.weight <- ideal.bmi *  sim.height^2  / 703 
sim.plot()














ideal.bmi.sd <- 1.8
sim.weight  <-    rnorm(N,ideal.bmi,ideal.bmi.sd) *  sim.height^2  / 703 
  
sim.plot()



# BMI.scriptYours
# -"clean up" this code
# suggest better documentation?
# suggest better naming conventions?
# build new function which includes:
#  hieght as an input parameter (since this varies by population group)
#  ideal BMI as an input paramter
#  other cool stuff?

