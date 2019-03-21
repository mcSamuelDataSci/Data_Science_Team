
#  BMI concepts:
#  BMI = weight / height^2
#  BMI = kilograms / meters^2  
#  BMI = ( pounds / inches^2 ) * 703
#  "healthy BMI" = 18.5 - 24.9
#  "ideal.bmi" (not true) (18.5+24.9)/2 =21.7


#========================================================


ideal.bmi <- 21.7

height.mean <- 66
height.sd   <-  6

weight.mean <- 130
weight.sd   <-  20


sim.height <- rnorm(1000,mean=height.mean,sd=height.sd)
sim.weight <- ideal.bmi *  sim.height^2  / 703 



height_weight_plot <- function(myCol="blue"){
  plot(sim.height,sim.weight,
       xlab="Height",
       ylab="Weight",
       col=myCol,
       log="y")
}

height_weight_plot()


#--------------------------------------------------------------------------


ideal.bmi.sd <- 1.8
sim.weight  <-    rnorm(1000,ideal.bmi,ideal.bmi.sd) *  sim.height^2  / 703 

height_weight_plot()









